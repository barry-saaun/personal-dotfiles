local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


-- using lazynvim requires to setup a leader beforehand if not been setup before
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local plugins = {
  {
    'svrana/neosolarized.nvim',
    dependencies = { 'tjdevries/colorbuddy.nvim' }
  },
  {
    'ellisonleao/gruvbox.nvim',
    dependencies = { 'tjdevries/colorbuddy.nvim' }
  },
  'szw/vim-maximizer',
  'folke/lsp-colors.nvim',
  'tpope/vim-surround',
  'christoomey/vim-tmux-navigator',
  'nvim-lualine/lualine.nvim',       -- Statusline,
  'nvim-lua/plenary.nvim',           -- Common utilities
  'onsails/lspkind-nvim',            -- vscode-like pictograms
  -- auto completing
  'hrsh7th/cmp-buffer',              -- nvim-cmp source for buffer words
  'hrsh7th/cmp-nvim-lsp',            -- nvim-cmp source for neovim's built-in LSP
  'hrsh7th/nvim-cmp',                -- Completion

  'neovim/nvim-lspconfig',           -- LSP
  'jose-elias-alvarez/null-ls.nvim', -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  'williamboman/mason.nvim',         -- LSP Package manager
  'williamboman/mason-lspconfig.nvim',

  'glepnir/lspsaga.nvim', -- LSP UIs
  {
    'nvim-treesitter/nvim-treesitter',
    build = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    -- dependencies = {
    --   'nvim-treesitter-textobjects'
    -- }
  },
  'kyazdani42/nvim-web-devicons', -- File icons
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    dependencies = {
      'nvim-telescope/telescope-file-browser.nvim',
      'nvim-telescope/telescope-live-grep-args.nvim',
      'nvim-telescope/telescope-fzf-native.nvim',
    },
  },
  'windwp/nvim-autopairs',
  'windwp/nvim-ts-autotag',
  {
    'numToStr/Comment.nvim',
    dependencies = {
      'JoosepAlviste/nvim-ts-context-commentstring'
    },
  },
  'norcalli/nvim-colorizer.lua',
  'folke/zen-mode.nvim',
  ({
    "iamcco/markdown-preview.nvim",
    build = function() vim.fn["mkdp#util#install"]() end,
  }),
  'akinsho/nvim-bufferline.lua',
  'jose-elias-alvarez/typescript.nvim',

  'L3MON4D3/LuaSnip',

  -- git plugins
  'lewis6991/gitsigns.nvim',
  'dinhhuy258/git.nvim', -- For git blame & browse
}

local opts = {}
require('lazy').setup(plugins, opts)
