return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ["*"] = {
          keys = {
            { "<leader>vlr", "<cmd>LspRestart<cr>", desc = "LspRestart" },
          },
        },
      },
    },
  },
}
