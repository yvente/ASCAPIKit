# Batch 5 — pinned five-operation production-preview integration

**Required clean HEAD:** `fce599cc1ebed8e9a84d099255b0cb0d9a3164a4`.

This batch installs exactly five previously type-checked operation models and
request methods derived from Apple's pinned App Store Connect OpenAPI **4.5.1**.
It generates the six Swift files from the pinned spec with the **unchanged**
Batch 4 generator, then adds one offline transport XCTest suite.

**Scope/claim:** These five methods become compileable callable production
package members, but remain **partially typed preview APIs**, not complete
schema coverage or verified live Apple API compatibility. The generator still
uses `ASCJSONValue` for polymorphic and nested fields and raw `URLQueryItem`
for query parameters. No claim of 1303 typed APIs is made.

## Security

- No network access in the installer or tests.
- Only the already-downloadable official Apple ZIP is accepted with the exact
  Batch 3 SHA-256 pin; the embedded JSON hash and version must also match.
- Checksums for all packaged installation source files are checked.
- Batch 3/4 tools are strictly pinned by SHA-256.
- Before any repository files are written, the generated Swift files are
  type-checked alongside existing production sources.
- `AGENTS.md` receives one targeted addition under section 13 explicitly
  authorizing only the five listed preview operations.
- No JWT refresh, retry, direct URLSession, package dependencies, live Apple
  calls, or automatic Git commits/pushes are introduced.
- If tests fail *after installation*, stop and report failures; do not try to
  repair or auto-revert the worktree.

## Run

Extract Batch5 ZIP **outside the repository**, then check SHA-256:

```bash
cd /PATH/TO/ASCAPIKit-Batch5
shasum -a 256 -c SHA256SUMS.txt
```

From the ASCAPIKit repository root, after verifying HEAD and clean git status:

```bash
SPEC_ZIP="${TMPDIR:-/tmp}/asc-openapi-official-4.5.1.zip"
shasum -a 256 "$SPEC_ZIP"
# STOP if it does not equal:
# 7b826ae9ca3e45b0e7df2643cbb811c9930632640944db11a8af4586fab9db46

bash /ABSOLUTE/PATH/ASCAPIKit-Batch5/apply-batch5.sh "$PWD" "$SPEC_ZIP"
```

The installer does **not download** anything. If the ZIP is missing, STOP and
report this; do not fetch from another URL or bypass SHA pins.

## Expected changes

- `AGENTS.md`: only a new explanatory approval under section 13.
- Six Swift files under `Sources/ASCAPIKit/ASCTypedGenerated/`, generated
  deterministically from pinned official 4.5.1 specification.
- `Tests/ASCAPIKitTests/ASCTypedGeneratedTests.swift`: ten StubTransport tests.
- Three new tool files: `asc_integrate.py`, `tests/test_asc_integrate.py`,
  and `README_BATCH5.md`.
- No changes to existing production Swift files, test files, Package.swift,
  or prior generation tools.

The installer runs Python tests for Batch 3, 4, and 5, then `swift build`,
`swift test`, `git diff --check`, and `git status --short`.

**Expected:** 16 + 20 + 15 = 51 Python tests, and 225 + 10 = **235 XCTest**.

Do not commit or push after validation; return the exact results and Git status.
