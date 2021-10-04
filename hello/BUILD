load("//:rules.bzl", "fpc")

fpc(
    name = "private",
    src = "private.pas",
    type = "unit",
)

fpc(
    name = "hello",
    src = "hello.pas",
    type = "program",
    deps = [
        ":private",
        "//common",
    ],
)
