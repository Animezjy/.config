-- Example using a list of specs with the default options
vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

require("lazy").setup({
  -- lazy nvim
  "folke/which-key.nvim",
  { "folke/neoconf.nvim", cmd = "Neoconf" },
  "folke/neodev.nvim",
  -- 目录浏览 nvim-tree
  "nvim-tree/nvim-tree.lua", requires = {"nvim-tree/nvim-web-devicons"},
  -- theme
  "folke/tokyonight.nvim",
  -- bufferline
  "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" },
  -- lualine
  "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" },
  "arkav/lualine-lsp-progress",
  -- 模糊搜索
  'nvim-telescope/telescope.nvim', requires = { "nvim-lua/plenary.nvim" },
  'nvim-lua/plenary.nvim',
  -- 代码高亮
  "nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
  -- mason
  "williamboman/mason.nvim", build = ":MasonUpdate",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",

  -- 补全引擎
  "hrsh7th/nvim-cmp",
  -- snippet 引擎
  "hrsh7th/vim-vsnip",
  -- 补全源
  "hrsh7th/cmp-vsnip",
  "hrsh7th/cmp-nvim-lsp", -- { name = nvim_lsp }
  "hrsh7th/cmp-buffer", -- { name = 'buffer' },
  "hrsh7th/cmp-path", -- { name = 'path' }
  "hrsh7th/cmp-cmdline", -- { name = 'cmdline' }
  -- 常见编程语言代码段
  "rafamadriz/friendly-snippets",

  -- LSP UI增强
  "lukas-reineke/indent-blankline.nvim",
  "onsails/lspkind-nvim",
--  "mhartington/formatter.nvim",
  "psf/black",
})


