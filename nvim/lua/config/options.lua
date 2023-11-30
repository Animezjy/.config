-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt
local g = vim.g
local api = vim.api
opt.relativenumber = false
opt.wildmenu = true
opt.wildmode = "longest:list,full"
g.rust_recommended_style = 0
g.tmux_navigator_no_mappings = 1
api.nvim_set_option('clipboard', 'unnamedplus')



