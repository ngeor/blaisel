load("//:rules.bzl", "fpc_unit")

fpc_unit(
    name = "common",
    src = "common.pas",
)

cc_binary(
    name = "hello",
    srcs = [
        "hello.c",
        ":common",
    ],
)
