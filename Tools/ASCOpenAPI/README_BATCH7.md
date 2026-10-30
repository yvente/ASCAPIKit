# Batch 7 — versioned Swift typed GET query generator

This is an offline, *versioned* upgrade (`asc_typed_v2.py`) of the Batch 4
five-operation generator. `asc_typed.py` stays unchanged because Batch 5
intentionally pins its exact bytes (SHA-256
`22a7558b55028eb4ee240ae523ccf9def5e45962eadc55cd6a207942a2af611a`).

## Features

- Stable encoder initializer ordering: required `type`, then required `id`,
  then other required fields alphabetically, then optional fields alphabetically.
- Discover GET query parameters at path-item and operation level, with the
  operation overriding the path-item by `(name, in)`.
- A `ASCTyped...Query` value with typed properties and explicit `URLQueryItem`
  serialization for strings, booleans, integers, decimal values, and primitive
  arrays, including `form`/`explode` handling.
- Keep the existing raw `queryItems` overload for source compatibility; add a
  second overload with explicit label `query:`. Existing production files are
  **not changed** by this batch.
- Unsupported parameter shapes (e.g. deepObject, content parameters, unknown
  composite types, name collisions, `allowReserved`) fail strict generation
  without writing partial outputs. This tool does NOT silently omit them.
- `generation.json` lists each typed query parameter, and still reports
  `rawQueryParameters=true` (legacy overload retained),
  `fullSchemaCoverage=false`, `verifiedTypedOperations=0`.

## Phase A: Install and test (no official ZIP needed)

Required clean HEAD: `abe1b32051c3d53351579732682970b201cdfdf8`.
Extract ZIP **outside** the repository. From the extracted Batch7 root:

```sh
shasum -a 256 -c SHA256SUMS.txt
```

From the repository root:

```sh
bash /ABS/PATH/ASCAPIKit-Batch7/apply-batch7.sh "$PWD"
```

The installer first type-builds the existing XCTest target and checks Git,
exact old generator/loader bytes, destination absences and the seven archive
hashes. It then installs exactly **five new Tools files** with exclusive
create, runs all Python tests (**84**), `swift build --build-tests`,
`swift test` (**235 existing XCTest**), `git diff --check` and `git status`.
On preflight failures it makes no changes. If tests fail after installation,
STOP and report rather than rerun or modify.

## Phase B: Synthetic query fixture, URL round-trip and mocked HTTP

From the repo root, use a **new** output path that does not already exist:

```sh
PYTHONDONTWRITEBYTECODE=1 python3 -B Tools/ASCOpenAPI/asc_typed_v2.py \
  --spec Tools/ASCOpenAPI/fixtures/typed-query-fixture.json \
  --fixture-mode \
  --out .build/asc-openapi/batch7-typed-query-fixture

swiftc -parse-as-library -module-name ASCAPIKit \
  Sources/ASCAPIKit/*.swift \
  .build/asc-openapi/batch7-typed-query-fixture/*.swift \
  Tools/ASCOpenAPI/tests/typed_query_smoke.swift \
  -o .build/asc-openapi/batch7-query-smoke

.build/asc-openapi/batch7-query-smoke
```

Expected: `BATCH7_TYPED_QUERY_SMOKE_OK`. The executable uses an isolated
`ASCTransport` stub and does not access Apple APIs or `example.test`.

## Phase C: Official pinned Apple 4.5.1

Reuse the previously downloaded verified official spec ZIP; do NOT fetch an
alternative or relax the hashes. From the repo root:

```sh
SPEC_ZIP="${TMPDIR:-/tmp}/asc-openapi-official-4.5.1.zip"
EXPECTED=7b826ae9ca3e45b0e7df2643cbb811c9930632640944db11a8af4586fab9db46
ACTUAL="$(shasum -a 256 "$SPEC_ZIP" | awk '{print $1}')"
if [ "$ACTUAL" != "$EXPECTED" ]; then echo 'PIN MISMATCH: STOP' >&2; exit 2; fi

PYTHONDONTWRITEBYTECODE=1 python3 -B Tools/ASCOpenAPI/asc_typed_v2.py \
  --spec "$SPEC_ZIP" --expected-sha256 "$EXPECTED" \
  --out .build/asc-openapi/batch7-official-v2

swiftc -typecheck -parse-as-library -module-name ASCAPIKit \
  Sources/ASCAPIKit/*.swift \
  .build/asc-openapi/batch7-official-v2/*.swift
```

Inspect `.build/asc-openapi/batch7-official-v2/generation.json`:
`generated` must equal 5 and `unsupported` must equal 0. Inspect
`typedQueryOverloads`, `jsonBackedFields`, the generated `ASCTyped*Query`
structures, and any compiler diagnostics. Check all five methods, not just
GetApp. **Do not copy generated files to Sources** and do not edit the legacy
production files. Apple queries might contain schemas not seen in the synthetic
fixture; any official-mode failure is a stopping condition, not permission to
skip parameters or loosen validation.

## Known boundaries

This batch introduces a v2 *generator*, not new production methods. The five
currently installed types remain partially typed, with 23 JSON-backed fields,
raw query access and no Apple live verification. Query values are represented
by supported scalar/array schema types; the generator does not fully model
OpenAPI discriminators, complex relationships, `deepObject` or parameter
`content`. Enums remain forward-compatible `String` values. No third-party
runtime dependencies or network calls are added.
