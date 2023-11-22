-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }
-- exit
map("n", "Q", ":q!<CR>", opt)
map("n", "W", ":w<CR>", opt)
map("n", "S", ":x<CR>", opt)

-- 分屏
map("n", "sv", ":vsp<CR>", opt)
map("n", "sh", ":sp<CR>", opt)
-- 关闭当前
map("n", "sc", "<C-w>c", opt)
-- 关闭其他
map("n", "so", "<C-w>o", opt)
map("n", "<leader>df", ":lua require('dap-python').test_class()<CR>", opt)
map("n", "<leader>dn", ":lua require('dap-python').test_method()<CR>", opt)
map("n", "<leader>ds", "<ESC>:lua require('dap-python').debug_selection()<CR>", opt)
