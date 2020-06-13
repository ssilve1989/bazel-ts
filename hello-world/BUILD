package(default_visibility = ["//visibility:public"])

load("@npm_bazel_typescript//:index.bzl", "ts_library")
load("@build_bazel_rules_nodejs//:index.bzl", "nodejs_binary")

ts_library(
  name = "main",
  srcs = ["index.ts"],
  deps = [
    "//calculator:calculator",
    "@npm//@types"
  ],
)

nodejs_binary(
  name = "helloworld",
  data = [
    ":main",
    "//calculator:calculator",
    "@npm//lodash",
  ],
  entry_point = ":index.ts"
)

# nodejs_binary(
#   name = "helloworld",
#   data = [
#     "//calculator:calculator",
#     "@npm//lodash",
#   ],
#   entry_point = ":index.js"
# )