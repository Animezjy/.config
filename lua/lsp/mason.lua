require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})
require("mason-lspconfig").setup({
  ensure_installed = {
    "html",
    "cssls",
    "vuels",
    "yamlls",
    "dockerls",
    "docker_compose_language_service",
    "groovyls",
    "gopls",
    "pyright",
  }
})
local lspconfig = require "lspconfig"
local util = require "lspconfig/util"
local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig.lua_ls.setup {
  capabilities = capabilities
}

lspconfig.gopls.setup {
  -- on_attach = on_attach,
  -- capabilities = capabilities,
  cmd = {"gopls"},
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  root_dir = util.root_pattern("go.work","go.mod",".git"),
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unuseparams = true,
      },
    },
  },
}

lspconfig.pyright.setup {
  -- on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "pyright-langserver", "--stdio" },
  filetypes = { "python" },
  python = {
    analysis = {
      autoImportCompletions = true,
      autoSearchPaths = true,
      diagnosticMode = "workspace",
      useLibraryCodeForTypes = true
    }
  },
}

