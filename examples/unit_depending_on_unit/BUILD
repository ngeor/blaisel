load("//:rules.bzl", "fpc_unit")

fpc_unit(
    name = "calc",
    src = "calc.pas",
)

fpc_unit(
    name = "tool",
    src = "tool.pas",
    deps = [":calc"],
)
