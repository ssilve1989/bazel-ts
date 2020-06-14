package(default_visibility = ["//visibility:public"])

load("@npm_bazel_typescript//:index.bzl", "ts_library")
load("@build_bazel_rules_nodejs//:index.bzl", "nodejs_binary")

ts_library(
  name = "main",
  srcs = glob(["**/*.ts"]),
  deps = [
    "@npm//@types",
    "@npm//@nestjs",
    "@npm//rxjs",
  ],
)

nodejs_binary(
  name = "helloworld",
  data = [
    "@npm//@nestjs/common",
    "@npm//@nestjs/core",
    "@npm//@nestjs/platform-express",
    "@npm//rxjs",
    "@npm//reflect-metadata",
    "@npm//tslib",
    ":main",
  ],
  entry_point = ":main.ts"
)