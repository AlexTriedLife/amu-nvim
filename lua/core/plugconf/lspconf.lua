require("mason-lspconfig").setup({
	ensure_installed = {"lua_ls"}
})

local lspconfig = require("lspconfig")

local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig.lua_ls.setup({
	capabilities = capabilities,
  settings = {
    Lua = {
      runtime = {
	version = "LuaJIT",
	path = vim.split(package.path, ";"),
      },
      diagnostics = {
        globals = { 'vim' },
      },
      workspace = {
        library = {
          vim.fn.expand("$VIMRUNTIME/lua"),
          vim.fn.stdpath("config") .. "/lua",
        },
	checkThirdParty = false,
      },
    },
      telemetry = {
	  enable = false,
	},
  },
})

lspconfig.clangd.setup{
	filetypes = {'h','hpp','c','cpp','cxx'}
}

lspconfig.gopls.setup{}





