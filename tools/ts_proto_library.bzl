load("@build_bazel_rules_nodejs//:providers.bzl", "DeclarationInfo", "JSEcmaScriptModuleInfo", "JSNamedModuleInfo")

def _impl(ctx):
  sources = depset()
  for dep in ctx.attr.deps:
    if ProtoInfo not in dep:
      fail("ts_proto_library dep %s must be a proto_library rule" % dep.label)

    sources = depset(transitive = [sources, dep[ProtoInfo].transitive_sources])
    output_name = ctx.label.name


  print('sources')
  print(sources)  
  return struct()

ts_proto_library = rule(
  implementation = _impl,
  attrs = {
    "deps": attr.label_list()
  }
)