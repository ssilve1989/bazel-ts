package(default_visibility = ["//visibility:public"])

load("@npm_bazel_typescript//:index.bzl", "ts_library")
# load("//tools/npm:package.bzl", "generate_npm_package")

ts_library(
  name = "calculator",
  srcs = glob(["*.ts"]),
  module_name = "@stevez/calculator",
  deps = [
    "@npm//@types"
  ]
)
