# Batch 6: schema-driven typed API quality gate

This batch adds a standalone offline quality gate **without modifying or
regenerating production Swift code**. It addresses the two Batch 5 test bugs:
missing required response-root `links` and incorrect manual assumptions about
Swift initializer argument order.

- `asc_quality.py` extracts the exact five approved operation response schemas
  through Batch 3/4's pinned loader, constructs minimal JSON fixture responses
  using declared `required` fields and `$ref`/supported `allOf`, fails explicitly
  on unsupported required unions, and reports limited verification scope.
- `tests/typed_response_smoke.swift` compiles with the actual generated preview
  types and decodes five schema-generated fixtures without network access.
- The optional `--production-dir` guard detects changes to the audited
  `ASCTypedUpdateAppStoreVersionRequestData` initializer `type, id` label order.
- The shell installer runs `swift build --build-tests` before installing. This
  blocks test-target compile regressions before writing files. It also runs
  full `swift test` and all Python OpenAPI tests afterward.

**Non-goals:** This batch does not stabilize generator output in the face of
arbitrary schema property-order changes, fully type nested polymorphic JSON,
implement typed query parameters, verify Apple server behavior, or expand the
five typed operations. In particular the initializer guard *detects* drift,
but does not silently rewrite public signatures.

Run all instructions in root `README.md` from the Batch 6 distribution.
Official Apple 4.5.1 ZIP SHA-256:
`7b826ae9ca3e45b0e7df2643cbb811c9930632640944db11a8af4586fab9db46`.
