#!/usr/bin/env python3
"""Batch 5: offline, pinned, atomic integration of five preview typed operations.

Only the pinned Apple OpenAPI 4.5.1 ZIP and previously audited generator are
accepted. No network calls, no credential reads, no git commits or pushes.

Usage:
 python3 asc_integrate.py --repo /path/to/ASCAPIKit --spec /path/to/official.zip --batch /path/to/unpacked/ASCAPIKit-Batch5
"""
from __future__ import annotations

import argparse
import hashlib
import json
import os
from pathlib import Path
import subprocess
import sys
import tempfile

BASE_HEAD = "fce599cc1ebed8e9a84d099255b0cb0d9a3164a4"
SPEC_ZIP_SHA = "7b826ae9ca3e45b0e7df2643cbb811c9930632640944db11a8af4586fab9db46"
SPEC_JSON_SHA = "7518d3a94a8bd701ac25c1c601b95b8f53aad92091affb15a2a9d331713dac1a"
GENERATOR_SHA = "22a7558b55028eb4ee240ae523ccf9def5e45962eadc55cd6a207942a2af611a"
LOADER_SHA = "40cc5974a639629b53ae665008c44f2b11d5a6fabc6439d6645130a32744920f"
SOURCE_DIR = "Sources/ASCAPIKit/ASCTypedGenerated"
SWIFT_FILES = (
    "ASCTypedPath.swift", "ASCTypedGetApp.swift", "ASCTypedGetBuild.swift",
    "ASCTypedGetAppStoreVersion.swift", "ASCTypedCreateAppStoreVersion.swift",
    "ASCTypedUpdateAppStoreVersion.swift",
)
PACKAGE_FILES = (
    "Tools/ASCOpenAPI/asc_integrate.py",
    "Tools/ASCOpenAPI/tests/test_asc_integrate.py",
    "Tools/ASCOpenAPI/README_BATCH5.md",
    "Tests/ASCAPIKitTests/ASCTypedGeneratedTests.swift",
)
POLICY_ANCHOR = "Do not add another typed endpoint without an explicit package-level decision."
POLICY_ADDITION = """The following five generated-preview operations have an explicit package-level
approval under the pinned Apple OpenAPI 4.5.1 specification:

- GET /v1/apps/{id}
- GET /v1/builds/{id}
- GET /v1/appStoreVersions/{id}
- POST /v1/appStoreVersions
- PATCH /v1/appStoreVersions/{id}

They must remain identified as partially typed, not fully verified Apple API
coverage. JSON-backed relationships, links, and included records are not
schema-complete. Query parameters are still raw URLQueryItem values. No new
generated operations may be installed without independent review, offline
transport tests, and an explicit package-level approval.

"""


def sha256(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def read_sha(path: Path) -> str:
    return sha256(path.read_bytes())


def git(repo: Path, *args: str) -> str:
    result = subprocess.run(["git", "-C", str(repo), *args],
                            check=True, text=True, capture_output=True)
    return result.stdout.strip()


def verify_archive(batch: Path) -> dict[str, bytes]:
    expected = set(PACKAGE_FILES)
    digest_lines = (batch / "SHA256SUMS.txt").read_text(encoding="utf-8").splitlines()
    checksums: dict[str, str] = {}
    for line in digest_lines:
        if "  " not in line:
            raise ValueError("Invalid checksum manifest")
        digest, rel = line.split("  ", 1)
        if rel in checksums or len(digest) != 64:
            raise ValueError("Invalid or duplicate SHA256SUMS entry")
        checksums[rel] = digest
    if set(checksums) != expected:
        raise ValueError("Unexpected archive file manifest")
    contents = {}
    for rel in PACKAGE_FILES:
        path = batch / rel
        if not path.is_file() or path.is_symlink():
            raise ValueError("Missing or symlinked packaged file: " + rel)
        data = path.read_bytes()
        if sha256(data) != checksums[rel]:
            raise ValueError("Checksum mismatch: " + rel)
        contents[rel] = data
    return contents


def inspect_policy(raw: bytes) -> bytes:
    text = raw.decode("utf-8")
    if text.count(POLICY_ANCHOR) != 1 or POLICY_ADDITION.strip() in text:
        raise ValueError("AGENTS.md typed-API approval anchor not uniquely matched")
    if "## 13. Do not add typed endpoints casually" not in text:
        raise ValueError("AGENTS.md typed-API policy section missing")
    return text.replace(POLICY_ANCHOR, POLICY_ADDITION + POLICY_ANCHOR, 1).encode("utf-8")


def check_repo(repo: Path, batch: Path, source: Path) -> tuple[dict[str, bytes], bytes, Path]:
    if not (repo / ".git").exists():
        raise ValueError("Not a Git checkout root")
    if git(repo, "rev-parse", "HEAD") != BASE_HEAD:
        raise ValueError("Unexpected Git HEAD; nothing changed")
    if git(repo, "status", "--porcelain=v1", "--untracked-files=all"):
        raise ValueError("Git worktree is not clean; nothing changed")
    files = verify_archive(batch)
    if not source.is_file() or source.is_symlink() or read_sha(source) != SPEC_ZIP_SHA:
        raise ValueError("Missing or hash-mismatched pinned Apple 4.5.1 ZIP")
    tools_dir = repo / "Tools/ASCOpenAPI"
    if read_sha(tools_dir / "asc_typed.py") != GENERATOR_SHA:
        raise ValueError("Batch 4 generator hash mismatch")
    if read_sha(tools_dir / "asc_openapi.py") != LOADER_SHA:
        raise ValueError("Batch 3 loader hash mismatch")
    if not (repo / "Sources/ASCAPIKit/ASCGenericRequest.swift").is_file():
        raise ValueError("Batch 1 public request runtime missing")
    if not (repo / "Tests/ASCAPIKitTests/TestSupport.swift").is_file():
        raise ValueError("Required StubTransport test support missing")
    if not (repo / "Sources/ASCAPIKit").is_dir():
        raise ValueError("Source root missing")
    dest_source = repo / SOURCE_DIR
    if dest_source.exists() or dest_source.is_symlink():
        raise ValueError("Generated source directory already exists")
    for rel in PACKAGE_FILES:
        p = repo / rel
        if p.exists() or p.is_symlink():
            raise ValueError("Package destination already exists: " + rel)
        if not p.parent.is_dir() or p.parent.is_symlink():
            raise ValueError("Unexpected package destination parent: " + rel)
    policy = repo / "AGENTS.md"
    if policy.is_symlink() or not policy.is_file():
        raise ValueError("AGENTS.md missing or symlinked")
    current = policy.read_bytes()
    revised = inspect_policy(current)
    return files, revised, dest_source


def generate_preview(repo: Path, source: Path, out: Path) -> dict[str, bytes]:
    tool = repo / "Tools/ASCOpenAPI/asc_typed.py"
    result = subprocess.run([sys.executable, "-B", str(tool), "--spec", str(source),
                             "--expected-sha256", SPEC_ZIP_SHA, "--out", str(out)],
                            text=True, capture_output=True)
    if result.returncode != 0:
        raise ValueError("Pinned generator failed: " + (result.stderr or result.stdout).strip()[:1400])
    manifest = json.loads((out / "generation.json").read_text(encoding="utf-8"))
    meta = manifest.get("spec", {})
    if (meta.get("sourceFileSHA256") != SPEC_ZIP_SHA
            or meta.get("jsonSHA256") != SPEC_JSON_SHA
            or meta.get("infoVersion") != "4.5.1"
            or manifest.get("generated") != 5
            or manifest.get("unsupported") != 0
            or manifest.get("verifiedTypedOperations") != 0
            or manifest.get("fullSchemaCoverage") is not False
            or manifest.get("rawQueryParameters") is not True
            or len(manifest.get("jsonBackedFields", [])) != 23):
        raise ValueError("Generated manifest does not satisfy Batch 5 preview contract")
    operations = {(x["method"], x["path"]) for x in manifest.get("operations", [])
                  if x.get("status") == "generated"}
    if operations != {
        ("GET", "/v1/apps/{id}"), ("GET", "/v1/builds/{id}"),
        ("GET", "/v1/appStoreVersions/{id}"), ("POST", "/v1/appStoreVersions"),
        ("PATCH", "/v1/appStoreVersions/{id}")
    }:
        raise ValueError("Unexpected operation manifest")
    produced = sorted(p.name for p in out.glob("*.swift"))
    if produced != sorted(SWIFT_FILES):
        raise ValueError("Unexpected generated source list")
    generated = {name: (out / name).read_bytes() for name in SWIFT_FILES}
    return generated


def preflight_swift(repo: Path, generated: dict[str, bytes], tmp: Path) -> None:
    # Protect the user's source tree: type-check all generated output before any write.
    inputs = sorted(str(p) for p in (repo / "Sources/ASCAPIKit").glob("*.swift"))
    assert inputs
    check = subprocess.run(["swiftc", "-typecheck", "-parse-as-library", "-module-name", "ASCAPIKit",
                            *inputs, *(str(tmp / name) for name in SWIFT_FILES)],
                           text=True, capture_output=True)
    if check.returncode:
        raise ValueError("Generated Swift typecheck failed before writing files:\n"
                         + check.stderr[-3000:])


def install(repo: Path, batch: Path, source: Path) -> dict:
    packaged, revised_policy, dest_source = check_repo(repo, batch, source)
    # Only ignored .build/ staging and system tempfile are written in preflight.
    with tempfile.TemporaryDirectory(prefix="asc-batch5-") as raw_tmp:
        temp = Path(raw_tmp)
        generated_dir = temp / "generated"
        generated = generate_preview(repo, source, generated_dir)
        preflight_swift(repo, generated, generated_dir)
        # Re-check clean base before any source writes, after the longer compile.
        if git(repo, "rev-parse", "HEAD") != BASE_HEAD or git(repo, "status", "--porcelain=v1", "--untracked-files=all"):
            raise ValueError("Repository changed during preflight; nothing changed")
        old_policy = (repo / "AGENTS.md").read_bytes()
        if inspect_policy(old_policy) != revised_policy:
            raise ValueError("AGENTS.md changed during preflight")
        created: list[Path] = []
        made_dir = False
        policy_modified = False
        policy = repo / "AGENTS.md"
        try:
            dest_source.mkdir(mode=0o755)
            made_dir = True
            for rel, content in packaged.items():
                p = repo / rel
                fd = os.open(p, os.O_WRONLY | os.O_CREAT | os.O_EXCL, 0o644)
                created.append(p)
                with os.fdopen(fd, "wb") as out:
                    out.write(content)
            for name, content in generated.items():
                p = dest_source / name
                fd = os.open(p, os.O_WRONLY | os.O_CREAT | os.O_EXCL, 0o644)
                created.append(p)
                with os.fdopen(fd, "wb") as out:
                    out.write(content)
            # Stage in the same directory to keep os.replace atomic even when
            # system /tmp and the user's checkout are on separate volumes.
            fd, tmp_path = tempfile.mkstemp(prefix=".ascbatch5-policy-", dir=str(repo))
            staging = Path(tmp_path)
            try:
                with os.fdopen(fd, "wb") as output:
                    output.write(revised_policy)
                os.chmod(staging, policy.stat().st_mode & 0o777)
                os.replace(staging, policy)
                policy_modified = True
            finally:
                staging.unlink(missing_ok=True)
        except BaseException:
            if policy_modified:
                policy.write_bytes(old_policy)
            for p in reversed(created):
                p.unlink(missing_ok=True)
            if made_dir:
                dest_source.rmdir()
            raise
    return {"sourceFiles": len(generated), "packagedFiles": len(packaged), "policyUpdated": True}


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--repo", required=True, type=Path)
    parser.add_argument("--spec", required=True, type=Path)
    parser.add_argument("--batch", required=True, type=Path)
    args = parser.parse_args(argv)
    try:
        result = install(args.repo.resolve(strict=True), args.batch.resolve(strict=True), args.spec.resolve(strict=True))
        print("INSTALLED_BATCH5: " + json.dumps(result, sort_keys=True))
        return 0
    except (OSError, ValueError, subprocess.CalledProcessError, KeyError, AssertionError) as err:
        print("ERROR: " + str(err), file=sys.stderr)
        return 2


if __name__ == "__main__":
    raise SystemExit(main())
