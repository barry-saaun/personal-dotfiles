require("barry.plugins-setup")
require("barry.core.options")
require("barry.core.maps")
require("barry.core.highlights")
require("barry.core.colorscheme")
require("barry.core.macos")
require("barry.core.wsl")
require("barry.core.windows")
require("barry.plugins.comment")
require("barry.plugins.lualine")
require("barry.plugins.telescope")
require("barry.plugins.nvim-cmp")
require("barry.plugins.lsp.mason")
require("barry.plugins.lsp.lspsaga")
require("barry.plugins.lsp.lspconfig")
require("barry.plugins.lsp.null-ls")
require("barry.plugins.autopairs")
require("barry.plugins.treesitter")
require("barry.plugins.colorizer")
require("barry.plugins.zen-mode")
require("barry.plugins.web-devicons")
require("barry.plugins.lspkind")
require('barry.plugins.ts-autotag')
require("barry.plugins.bufferline")
require("barry.plugins.gitsigns")
require('barry.plugins.git')

local has = vim.fn.has
local is_mac = has("macunix")
local is_win = has("win32")
local is_wsl = has("wsl")

if is_mac == 1 then
  require("barry.core.macos")
end

if is_win == 1 then
  require("barry.core.windows")
end

if is_wsl == 1 then
  require("barry.core.wsl")
end
