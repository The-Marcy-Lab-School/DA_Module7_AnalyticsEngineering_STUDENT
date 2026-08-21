# Intermediate

**Business logic and cross-table joins happen here** — this is where a
claim genuinely gets joined to the community it belongs to, where a time
entry gets joined to its engagement's billing rate, where an encounter
gets joined to its facility. Reads from staging models (`ref()`), never
directly from a `source()`.

An intermediate model is allowed to be a real, non-trivial
transformation — but it should still answer one clear question about
*how the data relates*, not yet be the final business-question-answering
table (that's `../marts/`). If you find yourself building only one
intermediate model that also happens to be your mart, that's a real
signal your layering might be too flat — `common_project_mistakes`'
#1 entry ("cramming all transformation logic into one giant model") is
exactly this failure mode.

Nothing is given here — build what your own domain's business questions
actually need.
