"""Provider definitions for rules_proto_grpc."""

ProtoPluginInfo = provider(fields = {
    "name": "The proto plugin name",
    "label": "The label used to define the plugin",
    "options": "A list of options to pass to the compiler for this plugin",
    "extra_protoc_args": "A list of extra args to pass directly to protoc, not as plugin options",
    "outputs": "Output filenames generated on a per-proto basis. Example: '{basename}_pb2.py",
    "out": "Output filename generated on a per-plugin basis; to be used in the value for --NAME-out=OUT",
    "output_directory": "Flag that indicates that the plugin should just output a directory. Used for plugins that have no direct mapping from source file name to output name. Cannot be used in conjunction with outputs or out",
    "tool": "The plugin binary. If absent, it is assumed the plugin is built-in to protoc itself and plugin_name will be used if available, otherwise the plugin name",
    "tool_executable": "The plugin binary executable",
    "use_built_in_shell_environment": "Whether the tool should use the built in shell environment or not",
    "protoc_plugin_name": "The name used for the plugin binary on the protoc command line. Useful for targeting built-in plugins. Uses plugin name when not set",
    "exclusions": "Exclusion filters to apply when generating outputs with this plugin. Used to prevent generating files that are included in the protobuf library, for example. Can exclude either by proto name prefix or by proto folder prefix",
    "data": "Additional files required for running the plugin",
    "separate_options_flag": "Flag to indicate if plugin options should be sent via the --{lang}_opts flag",
    "empty_template": "Template file to use to fill missing outputs",
    "quirks": "List of plugin quirks that toggle behaviours in compilation",
})

ProtoLibraryAspectNodeInfo = provider(
    fields = {
        "output_root": "The root directory that direct (non-transitive) outputs were written to, as a string",
        "direct_output_files": "The files generated by this aspect only, as a depset",
        "direct_output_dirs": "The directories generated by this aspect only, as a depset",
        "output_files": "The files generated by this aspect and its transitive dependencies, as a dict of depsets indexed by the root directory",
        "output_dirs": "The directories generated by this aspect and its transitive dependencies, as a depset",
    },
)

ProtoCompileInfo = provider(fields = {
    "label": "label object",
    "output_files": "The files generated by this rule, as a dict of depsets indexed by the root directory",
    "output_dirs": "The directories generated by this rule and its transitive dependencies, as a depset",
})