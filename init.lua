-- lazy nvim
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
require "plugins"
-- 基础配置
require "config.basic"
-- 键位映射
require "config.mappings"
-- 主题设置
require "plugin-config.colorscheme"
-- 顶部标签栏
require "plugin-config.bufferline"
-- 底部状态栏
require "plugin-config.lualine"
require "plugin-config.nvim-tree"
-- LSP Server 安装
require "lsp.mason"
require "lsp.lspconfig"
-- LSP 代码自动补全
require "lsp.null-ls"
require "lsp.cmp"
require "lsp.ui"
-- 代码高亮
require "plugin-config.nvim-treesitter"
-- 缩进线
require "plugin-config.indent-blankline"
-- require "plugin-config.dashboard"
-- 代码括号自动补全
require "lsp.autopairs"
require "lsp.comment"
