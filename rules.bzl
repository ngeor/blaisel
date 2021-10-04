def _fpc_impl(ctx):
    expected_output_filename = ctx.label.name
    if expected_output_filename + ".pas" != ctx.file.src.basename:
        fail("Target name and source file name need to match")

    if ctx.attr.type == "unit":
        expected_output_filename += ".ppu"
    elif ctx.attr.type == "library":
        expected_output_filename = "lib" + expected_output_filename + ".dylib"
    main_out = ctx.actions.declare_file(expected_output_filename)
    object_out = ctx.actions.declare_file(ctx.label.name + ".o")
    arguments = ["-o" + main_out.path]

    unit_dirs = {}
    for dep in ctx.files.deps:
        unit_dir = dep.dirname
        if not unit_dir in unit_dirs:
            arguments += ["-Fu" + unit_dir]
            unit_dirs[unit_dir] = 1

    arguments += [ctx.file.src.path]
    outputs = [main_out, object_out]
    ctx.actions.run(
        outputs = outputs,
        inputs = [ctx.file.src] + ctx.files.deps,
        arguments = arguments,
        executable = "/usr/local/bin/fpc",
    )
    return DefaultInfo(files = depset(outputs))

fpc = rule(
    doc = "Compiles with the FPC compiler",
    implementation = _fpc_impl,
    attrs = {
        "src": attr.label(mandatory = True, allow_single_file = True),
        "deps": attr.label_list(),
        "type": attr.string(mandatory = True, values = ["unit", "library", "program"]),
    },
)

# maybe support multiple srcs?

# maybe detect the contents of the file and determine if it is program unit or library
