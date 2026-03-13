return {
  {
    "Mastttttter/plantuml.nvim",
    -- dir = "/mnt/e/code/lua/plantuml",
    init = function()
      vim.filetype.add({
        extension = {
          puml = "plantuml",
          uml = "plantuml",
        },
      })
    end,
    ft = { "plantuml" }, -- Lazy load when opening .puml or .uml files
    config = function()
      require("plantuml").setup({
        -- java_cmd = "java",
        -- plantuml_jar = nil, -- Path to plantuml.jar (optional if plantuml is in PATH)
        -- inkscape_cmd = "inkscape",
        -- server_port = 8890,
        png_dpi = 400,
      })
    end,
    keys = {
      { "<leader>vup", "<cmd>PlantumlPreview<cr>", desc = "Preview PlantUML in browser" },
      { "<leader>vuu", "<cmd>PlantumlPreviewUTXT<cr>", desc = "Preview PlantUML as ASCII" },
      { "<leader>vus", "<cmd>PlantumlCreateSVG<cr>", desc = "Create SVG file" },
      { "<leader>vug", "<cmd>PlantumlCreatePNG<cr>", desc = "Create PNG file (high-DPI)" },
      { "<leader>vut", "<cmd>PlantumlCreateUTXT<cr>", desc = "Create UTXT file" },
    },
  },
  {
    "aklt/plantuml-syntax",
  },
}
