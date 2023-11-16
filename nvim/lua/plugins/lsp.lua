return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "stylua",
        "typescript-language-server",
        "tailwindcss-language-server",
        "lua-language-server",
        "eslint-lsp",
        "pyright",
        "json-lsp",
        "rust-analyzer",
        "css-lsp",
      })
    end,
  },
}
