# Batch 8 — integrate three typed GET Query overloads (Apple OpenAPI 4.5.1)

Exact clean Git HEAD: `7e194dba17b388f0603871c4ac98018713d9cf34`.

- Keep the original 5 typed operations and **all six Batch 5 generated Swift files byte-for-byte unchanged**.
- Generate **one additive Swift file** `Sources/ASCAPIKit/ASCTypedGenerated/ASCTypedQueriesV2.swift` from the pinned Apple 4.5.1 ZIP.
- It contains query types and new `query:` overloads for GET App, GET Build and GET AppStoreVersion. The legacy `queryItems:` overloads remain available.
- 79 parameters (44+19+16), per official 4.5.1 spec; 0 new method+path endpoints. Other 2 POST/PATCH operations remain unchanged.
- New 8 offline XCTest in `ASCTypedQueriesV2Tests.swift`, 9 Python promotion tests. Target: **93 Python / 243 XCTest** (84+9 and 235+8).
- Generated manifest is kept in `.build/asc-openapi/batch8-official/generation.json`, never committed.
- Production still has 23 JSON-backed fields in the existing five operations; **not** full Schema coverage or live Apple verification.

## Installation

Download nothing inside the installer. Use the already-verified Apple ZIP:

```bash
SPEC_ZIP="${TMPDIR:-/tmp}/asc-openapi-official-4.5.1.zip"
shasum -a 256 "$SPEC_ZIP"
# Must equal 7b826ae9ca3e45b0e7df2643cbb811c9930632640944db11a8af4586fab9db46
```

Extract Batch 8 outside your Git repository. In the extracted directory, run:

```bash
shasum -a 256 -c SHA256SUMS.txt
```

From repository root:

```bash
bash /ABSOLUTE/PATH/ASCAPIKit-Batch8/apply-batch8.sh "$PWD" "$SPEC_ZIP"
```

The installer checks Git HEAD, a clean worktree, SHA-256 for package and historical generator files, official ZIP pin, the **three existing official GET source files byte for byte**, the generator manifest, all query parameter counts, and Swift typechecking before writing files. It checks baseline test target compilation before writing. On failed preflight, no tracked changes. It creates five new files (four packaged + one generated), then Python tests and Swift tests run; on post-install failures, STOP and do not self-fix or commit.

Expected new files only:

```text
Sources/ASCAPIKit/ASCTypedGenerated/ASCTypedQueriesV2.swift
Tests/ASCAPIKitTests/ASCTypedQueriesV2Tests.swift
Tools/ASCOpenAPI/asc_promote_queries.py
Tools/ASCOpenAPI/tests/test_asc_promote_queries.py
Tools/ASCOpenAPI/README_BATCH8.md
```

Run after installation, if successful:

```bash
swift build --build-tests
swift test
python3 -B -m unittest discover -s Tools/ASCOpenAPI/tests -p 'test_*.py'
git diff --check
git status --short
```

Inspect `.build/asc-openapi/batch8-official/generation.json`, reporting `existingEndpointCountEnhanced=3`, `integratedEndpointCountAdded=0`, `typedQueryParameterCount=79`, and `liveAppleVerified=false`. No real App Store Connect calls, JWT/credentials, push, PR, or commit.
