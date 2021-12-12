load("//:rules.bzl", "fpc_unit", "fpc_binary")

fpc_unit(
    name = "calc",
    src = "calc.pas",
)

fpc_binary(
    name = "hello",
    src = "hello.pas",
    deps = [":calc"],
)
