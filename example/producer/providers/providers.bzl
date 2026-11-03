"""Provider for Starlark source files."""

# TODO(https://github.com/bazelbuild/bazel/issues/32207): Declare the field types on the provider.
# TODO(https://github.com/bazelbuild/bazel/issues/32021): Annotate the file and repository-name depset element types.
StarlarkInfo = provider(
    doc = "A depset of Starlark source files needed at runtime.",
    fields = {
        "sources": "depset of File objects containing Starlark source files.",  # type: depset[File]
        "loadpath": "string load path prefix for this library (e.g. '//src' or '@myrepo//src').",  # type: str
        "repos": "depset of (friendly_name, canonical_name) tuples mapping repository names.",  # type: depset[tuple[str, str]]
    },
)
