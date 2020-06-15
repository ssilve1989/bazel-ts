load("//tools:ts_proto_library.bzl", "ts_proto_library")

proto_library(
  name = "greeter_proto",
  srcs = glob(["**/*.proto"]),
  visibility = ["//visibility:public"]
)

ts_proto_library(
  name = "ts_greeter_proto",
  deps = [":greeter_proto"],
)