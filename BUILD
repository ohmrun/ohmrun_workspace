genrule(
  name  = "git_clone_stx_workspace_repo",
  cmd   = "direnv allow && direnv exec . bb -m stx.clone_and_split_stx_workspace.main",
  tools = [],
  srcs  = ["bb.edn","deps.edn",".local"],
  outs  = {
    "stx_workspace" : ["stx_workspace"]
  }
)
genrule(
  name  = "show_env",
  cmd   = "direnv allow && direnv exec . bb -m stx.build.main > test.txt",
  #cmd   = "env > test.txt",
  outs  = ["test.txt"],
  srcs  = ["bb.edn","deps.edn",".local"]
)
# genrule(
#   name      = "copy_in_stx_workspace",
#   pass_env  = ["STX_WORKSPACE"],
#   cmd       = "bb -m stx.build.main"
#   srcs      = {
#     i : 
#   }
#   outs      = {}
# )