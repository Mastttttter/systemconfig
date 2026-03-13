return {
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        ["python"] = { "black", lsp_format = "fallback" },
        cpp = { "clang-format", lsp_format = "fallback" },
        rust = { "rustfmt", lsp_format = "fallback" },
        markdown = { "markdownlint-cli2" },
      },
    },
  },
}
