-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("lspconfig").jdtls.setup {}
require("lspconfig").rust_analyzer.setup {}
require("lspconfig").clangd.setup {}
require("lspconfig").lua_ls.setup {}
require("lspconfig").pyright.setup {}
require("lspconfig").eslint.setup {}
require("lspconfig").ts_ls.setup {}
