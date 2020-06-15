# Add rules here to build your software
# See https://docs.bazel.build/versions/master/build-ref.html#BUILD_files
# load("@build_bazel_rules_nodejs//:index.bzl", "nodejs_binary")

package(default_visibility = ["//visibility:public"])

exports_files([
    "tsconfig.json",
])

# PROTOBUF_DEPS = [
#     "@npm//protobufjs",
#     # these deps are needed even though they are not automatic transitive deps of
#     # protobufjs since if they are not in the runfiles then protobufjs attempts to
#     # run `npm install` at runtime to get them which fails as it tries to access
#     # the npm cache outside of the sandbox
#     "@npm//semver",
#     "@npm//chalk",
#     "@npm//glob",
#     "@npm//jsdoc",
#     "@npm//minimist",
#     "@npm//tmp",
#     "@npm//uglify-js",
#     "@npm//uglify-es",
#     "@npm//espree",
#     "@npm//escodegen",
#     "@npm//estraverse",
# ]

# nodejs_binary(
#     name = "pbjs",
#     data = PROTOBUF_DEPS,
#     entry_point = "@npm//:node_modules/protobufjs/bin/pbjs",
#     install_source_map_support = False,
# )

# nodejs_binary(
#     name = "pbts",
#     data = PROTOBUF_DEPS,
#     entry_point = "@npm//:node_modules/protobufjs/bin/pbts",
#     install_source_map_support = False,
# )