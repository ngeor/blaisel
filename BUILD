load("@io_bazel_stardoc//stardoc:stardoc.bzl", "stardoc")

package(default_visibility = ["//visibility:public"])

filegroup(
    name = "distro_srcs",
    srcs = [
        "BUILD",
    ] + glob([
        "*.bzl",
    ]),
    visibility = ["//:__pkg__"],
)

stardoc(
    name = "docs",
    out = "rules.md",
    input = "rules.bzl",
)
