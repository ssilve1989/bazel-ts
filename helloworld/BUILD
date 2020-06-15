load("@build_bazel_rules_nodejs//:index.bzl", "nodejs_binary")
load("@npm_bazel_typescript//:index.bzl", "ts_library")

package(default_visibility = ["//visibility:public"])

ts_library(
    name = "main",
    srcs = glob(["**/*.ts"]),
    deps = [
        "@npm//@nestjs",
        "@npm//@types",
        "@npm//rxjs",
    ],
)

nodejs_binary(
    name = "helloworld",
    data = [
        ":main",
        "@npm//@nestjs/common",
        "@npm//@nestjs/core",
        "@npm//@nestjs/platform-express",
        "@npm//reflect-metadata",
        "@npm//rxjs",
        "@npm//tslib",
    ],
    entry_point = ":main.ts",
)
