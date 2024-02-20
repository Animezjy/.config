return {
  "neovim/nvim-lspconfig",
  init = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    keys[#keys + 1] = { "<leader>ca", false }
    keys[#keys + 1] = { "]d", false }
    keys[#keys + 1] = { "[d]", false }
  end,
  -- 使用 vim.g.autoformat
  opts = function()
    vim.g.autoformat = false
  end,
  settings = {
    Lua = {
      hint = {
        enable = true,
        arrayIndex = true,
        setType = true,
      },
    },
  },
}
