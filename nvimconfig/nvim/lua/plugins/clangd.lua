return {
  "Civitasv/cmake-tools.nvim",
  lazy = false,
  opts = {},
  keys = {
    { "<leader>vcg", "<cmd>CMakeGenerate<cr>", desc = "CMakeGenerate", mode = "n" },
    { "<leader>vcb", "<cmd>CMakeBuild<cr>", desc = "CMakeBuild", mode = "n" },
    { "<leader>vcr", "<cmd>CMakeRun<cr>", desc = "CMakeRun", mode = "n" },
    { "<leader>vcd", "<cmd>CMakeDebug<cr>", desc = "CMakeDebug", mode = "n" },
    { "<leader>vcc", "<cmd>CMakeClean<cr>", desc = "CMakeClean", mode = "n" },
    { "<leader>vcq", "<cmd>CMakeQuickStart<cr>", desc = "CMakeQuickStart", mode = "n" },
    { "<leader>vcoe", "<cmd>CMakeOpenExecutor<cr>", desc = "CMakeOpenExecutor", mode = "n" },
    { "<leader>vcor", "<cmd>CMakeOpenRunner<cr>", desc = "CMakeOpenRunner", mode = "n" },
    { "<leader>vcse", "<cmd>CMakeStopExecutor<cr>", desc = "CMakeStopExecutor", mode = "n" },
    { "<leader>vcsr", "<cmd>CMakeStopRunner<cr>", desc = "CMakeStopRunner", mode = "n" },
  },
}
