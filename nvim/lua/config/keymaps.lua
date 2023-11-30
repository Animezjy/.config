-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }
-- exit
map("n", "Q", ":q!<CR>", opt)
map("n", "W", ":w<CR>", opt)
map("n", "S", ":x<CR>", opt)
map("n", "<c-u>", "4k<CR>", opt)
map("n", "<c-d>", "4j<CR>", opt)

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
-- 插入模式
map("i", "<C-j>", "<DOWN>", opt)

-- lsp saga
map("n", "gp", "<cmd>Lspsaga peek_definition<CR>", opt)
map("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opt)
map("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opt) -- jump to previous diagnostic in buffer
map("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", opt)

-- hop
map("n", "<leader>hw", ":HopWord<cr>", opt)
map("n", "<leader>hww", ":HopWordMW<cr>", opt)
map("n", "<leader>hc", ":HopChar1<cr>", opt)
map("n", "<leader>hcw", ":HopChar1MW<cr>", opt)

map("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opt)

-- telescope

map("n", "<c-f>", "<cmd>lua require('telescope.builtin').find_files()<CR>", opt)
map("n", "<c-p>", "<cmd>lua require('telescope.builtin').live_grep()<CR>", opt)
map("n", "<c-e>", "<cmd>lua require('telescope.builtin').oldfiles()<CR>", opt)
