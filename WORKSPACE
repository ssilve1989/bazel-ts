# Bazel workspace created by @bazel/create 1.7.0

# THE PLACMENT OF THE LOAD CALLS MATTERS DONT FUCK IT UP

# Declares that this directory is the root of a Bazel workspace.
# See https://docs.bazel.build/versions/master/build-ref.html#workspace
workspace(
    # How this workspace would be referenced with absolute labels from another workspace
    name = "stevez",
    # Map the @npm bazel workspace to the node_modules directory.
    # This lets Bazel use the same node_modules as other local tooling.
    managed_directories = {"@npm": ["node_modules"]},
)

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

################
# Node.JS Setup
################
# Install the nodejs "bootstrap" package
# This provides the basic tools for running and packaging nodejs programs in Bazel
http_archive(
    name = "build_bazel_rules_nodejs",
    sha256 = "84abf7ac4234a70924628baa9a73a5a5cbad944c4358cf9abdb4aab29c9a5b77",
    urls = ["https://github.com/bazelbuild/rules_nodejs/releases/download/1.7.0/rules_nodejs-1.7.0.tar.gz"],
)
load("@build_bazel_rules_nodejs//:index.bzl", "yarn_install", "node_repositories")

# The yarn_install rule runs yarn anytime the package.json or yarn.lock.json file changes.
# It also extracts any Bazel rules distributed in an npm package.
yarn_install(
    # Name this npm so that Bazel Label references look like @npm//package
    name = "npm",
    package_json = "//:package.json",
    yarn_lock = "//:yarn.lock",
)

node_repositories(
  package_json = ["//:package.json"],
  node_version = "14.3.0",
  yarn_version = "1.22.4"
)
load("@npm//:install_bazel_dependencies.bzl", "install_bazel_dependencies")
# Install any Bazel rules which were extracted earlier by the yarn_install rule.
install_bazel_dependencies()

###################
# Typescript Setup
####################
load("@npm_bazel_typescript//:index.bzl", "ts_setup_workspace")
ts_setup_workspace()
# exports_files(["tsconfig.json"], visibility = ["//visibility:public"])