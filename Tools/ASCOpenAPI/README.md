# ASCAPIKit OpenAPI tooling

Offline Python tooling that generates and audits ASCAPIKit's pinned
App Store Connect OpenAPI operation catalog and typed wrappers.

Everything in this directory is **offline**: the tools perform no network
access, read no credentials, run no subprocesses, and make no Git changes.
Official-spec commands require the official Apple OpenAPI archive to be
supplied locally (see [Specification pin](#specification-pin)); the tools
never download a substitute.

## Current tool files

| File | Role |
| --- | --- |
| `asc_openapi.py` | Core loader and catalog tool: verifies the pinned spec, builds the operation catalog and evidence report (`catalog`), generates generic Swift operation descriptors (`generate`), and compares two catalogs (`diff`). |
| `asc_catalog_codegen.py` | Full-catalog generator: emits the complete production Swift catalog (`ASCOpenAPICatalogRuntime.swift`, chunked operation files, `ASCOpenAPICatalog_All.swift`) plus coverage reports. Hard-pinned to 4.5.1, 1,303 operations, and the pinned hashes; refuses a non-empty output directory. |
| `asc_catalog_runtime.swift` | Source template for the generated runtime dispatcher (`ASCOpenAPIBody`, `ASCOpenAPICatalogError`, `ASCOpenAPIOperation`, `ascOpenAPI`). Copied verbatim into generated output. |
| `asc_catalog_transport_insertion.swift.txt` | Historical Batch-3 snippet from the transport integration phase. Kept for the development record; not used by current tools. |
| `asc_typed.py` | Batch-4 experimental typed generator for the five generated operations. Superseded in production by `asc_typed_v2.py`; kept for history and tests. |
| `asc_typed_v2.py` | Batch-7 typed generator: versioned Swift Codable response models and typed GET query structs for the five generated operations. Writes only to a new `--out` directory. |
| `asc_promote_queries.py` | Batch-8 append-only promotion of the three typed GET query overloads into production files. With `--repo`, it validates the installed production files first. |
| `asc_integrate.py` | Batch-5 integrator: atomic installation of the five typed preview operations into a repository checkout. Requires a clean HEAD. |
| `asc_quality.py` | Batch-6 quality gate: strict, schema-driven fixture and audit checks for the five typed operations. |
| `verified-typed.json` | Registry of operations promoted to fully verified typed coverage. Intentionally empty: an operation is entered only after its real Swift method, path, HTTP verb, request/response contracts, and tests have been reviewed. Descriptors and raw HTTP do not qualify. |
| `catalog-coverage-4.5.1.json` | Authoritative machine-readable coverage report for the pinned 4.5.1 catalog. |
| `catalog-coverage-4.5.1.md` | Human-readable summary of the same report. |
| `fixtures/` | Synthetic fixture specs for offline generator testing (`--fixture-mode`). Never treated as the official spec. |
| `tests/` | Python unit tests for the tools (see below). |
| `README_BATCH4.md` … `README_BATCH8.md`, `README_FINAL.md` | **Historical phase documents** from the staged development batches. They record pins, HEAD requirements, and procedures that were true when written. They are not the current user or installation guide; this README is. |

## Specification pin

The catalog is pinned to Apple's official App Store Connect OpenAPI
**4.5.1** specification:

- `sourceFileSHA256`: `7b826ae9ca3e45b0e7df2643cbb811c9930632640944db11a8af4586fab9db46`
- `jsonSHA256`: `7518d3a94a8bd701ac25c1c601b95b8f53aad92091affb15a2a9d331713dac1a`

`asc_catalog_codegen.py` enforces the version, the embedded-JSON hash, and
the operation count (1,303) on every run and fails otherwise. Commands
that accept `--expected-sha256` verify the supplied archive before use.

Prerequisite: you must already possess the official Apple OpenAPI 4.5.1
archive locally. The tools accept a path to it (`--spec`); they do not,
and must not, download a replacement spec. Bypassing, relaxing, or
editing the pinned hashes is prohibited — a different spec produces a
different catalog and invalidates the audited coverage report.

## Catalog generator vs. typed generator

- **Catalog generator** (`asc_catalog_codegen.py`, core in
  `asc_openapi.py`): covers every operation in the pinned spec. It
  produces raw-transport entry points (`ascGenerated_...` returning
  `Data`), operation metadata, and the coverage report. It does not
  claim Codable schema coverage or live Apple verification.
- **Typed generator** (`asc_typed.py`, `asc_typed_v2.py`,
  `asc_promote_queries.py`, `asc_integrate.py`, `asc_quality.py`):
  covers exactly five explicitly approved operations
  (`GET /v1/apps/{id}`, `GET /v1/builds/{id}`,
  `GET /v1/appStoreVersions/{id}`, `POST /v1/appStoreVersions`,
  `PATCH /v1/appStoreVersions/{id}`) with partial Codable response
  models, plus three typed GET query structs (79 typed query
  parameters). JSON-backed relationships, links, and included records
  remain JSON-backed and are not schema-complete. Nothing produced by
  the typed generator is verified against the live Apple service.

## Generated file locations

- Production Swift catalog:
  `Sources/ASCAPIKit/ASCOpenAPICatalog/` (`ASCOpenAPICatalogRuntime.swift`,
  `ASCOpenAPICatalog_00.swift` … `ASCOpenAPICatalog_32.swift`,
  `ASCOpenAPICatalog_All.swift`)
- Production typed files:
  `Sources/ASCAPIKit/ASCTypedGenerated/`
- Coverage reports:
  `Tools/ASCOpenAPI/catalog-coverage-4.5.1.json` and `.md`
- Verified typed registry:
  `Tools/ASCOpenAPI/verified-typed.json`

## Running the Python tests

From the repository root:

```bash
PYTHONDONTWRITEBYTECODE=1 python3 -B -m unittest discover \
  -s Tools/ASCOpenAPI/tests \
  -p 'test_*.py'
```

All tests are offline and use the fixture specs under `fixtures/`.
Current baseline: 102 tests.

## Verifying the Swift build and tests

From the repository root:

```bash
swift build --build-tests
swift test
```

No test in the Swift suite accesses the real network; all transports are
injected stubs.

## Checking generated-code drift

To verify that the checked-in catalog matches what the generator
produces from the pinned specification:

1. Obtain the official Apple OpenAPI 4.5.1 archive locally (see the pin
   above).
2. Regenerate into a fresh empty directory (the tool refuses a non-empty
   one):

   ```bash
   python3 Tools/ASCOpenAPI/asc_catalog_codegen.py \
     --spec /path/to/appstoreconnect-openapi-4.5.1.zip \
     --out /tmp/ascapikit-catalog-regen
   ```

3. Compare the outputs with the production files:

   ```bash
   diff -ru /tmp/ascapikit-catalog-regen/swift \
     Sources/ASCAPIKit/ASCOpenAPICatalog
   diff -u /tmp/ascapikit-catalog-regen/coverage.json \
     Tools/ASCOpenAPI/catalog-coverage-4.5.1.json
   diff -u /tmp/ascapikit-catalog-regen/coverage.md \
     Tools/ASCOpenAPI/catalog-coverage-4.5.1.md
   ```

Any difference means the checked-in sources have drifted from the
generator, the pin has changed, or the generator changed. Investigate
before committing either side. For operation-level comparisons between
two catalogs or two spec versions, `asc_openapi.py diff --old --new
--out` produces a structured report.

Regeneration for a **new Apple specification version** is a package-level
decision: new pins, a reviewed operation diff, updated coverage, and full
test runs are required. Do not regenerate against an unpinned or
substituted spec.

## Generator limitations

- Generators write only to a new, empty `--out` directory (or, for
  `asc_integrate.py`, to a clean-HEAD checkout through an atomic batch
  procedure). They never edit arbitrary existing sources in place.
- The typed generator's five-operation scope and JSON-backed fields are
  intentional. JSON-backed relationships, links, and included records are
  reported explicitly and must not be presented as schema-complete.
- `--fixture-mode` is for synthetic testing only and is never valid for
  official-spec acceptance.
- `asc_typed.py` (Batch 4) is retained for history; `asc_typed_v2.py`
  (Batch 7) superseded it for production typed output.
- Operation names embed a short route hash. Regenerating against a
  different specification can rename entry points; treat regeneration as
  a reviewed migration.

## Why audited generated code must not be hand-overwritten

The checked-in catalog and typed files are the audited artifacts of the
pinned specification: the coverage report, the Python tests, and the
Swift tests all assert against them. Hand-editing generated files breaks
that chain — drift checks start failing, coverage numbers stop matching
reality, and security-relevant invariants (path validation, media-type
restrictions, hash pins) can silently change. Any change must go through
the generator and its tests, or be an explicitly reviewed package-level
decision with regenerated evidence.
