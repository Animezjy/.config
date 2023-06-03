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
