def _touchfile_impl(ctx):
    ctx.actions.run(
        outputs = [ctx.outputs.touchfile],
        executable = ctx.executable._binary,
        arguments = [ctx.outputs.touchfile.path],
    )


touchfile = rule(
    implementation = _touchfile_impl,
    attrs = {
        "_binary": attr.label(
            default = "//src:touch",
            executable = True,
            cfg = "host",
        )
    },
    outputs = {
        "touchfile": "%{name}.touch",
    },
)
