load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "io_bazel_stardoc",
    sha256 = "aa814dae0ac400bbab2e8881f9915c6f47c49664bf087c409a15f90438d2c23e",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/stardoc/releases/download/0.5.1/stardoc-0.5.1.tar.gz",
        "https://github.com/bazelbuild/stardoc/releases/download/0.5.1/stardoc-0.5.1.tar.gz",
    ],
)

load("@io_bazel_stardoc//:setup.bzl", "stardoc_repositories")

stardoc_repositories()
