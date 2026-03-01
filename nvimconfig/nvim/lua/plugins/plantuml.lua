return {
  "Mastttttter/plantuml.nvim",
  -- 假设你将其放在本地路径或 git 仓库
  dir = "/mnt/e/code/lua/plantuml",
  config = function()
    require("plantuml").setup({
      output_dir = "/tmp/pumltmp",
      suffix = "_tutxt",
      plantuml_cmd = "plantuml",
      utxt_suffix = ".utxt",
    })
  end,
}
