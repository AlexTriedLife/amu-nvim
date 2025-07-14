local M = {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		-- Mason: Portable LSP installer
		{
			"williamboman/mason.nvim",
			config = true,
		},
		{
			"williamboman/mason-lspconfig.nvim",
			config = function()
				require("mason-lspconfig").setup({
					ensure_installed = {
						"lua_ls",
						"pyright",
						"jsonls",
						"ruby_lsp",
					},
					automatic_installation = true,
				})
			end,
		},
		-- Autocompletion bridge
		"hrsh7th/cmp-nvim-lsp",
	},
	config = function()
		local lspconfig = require("lspconfig")
		local capabilities = require("cmp_nvim_lsp").default_capabilities()
		vim.diagnostic.config({
			virtual_text = { prefix = "●", spacing = 2 },
			float = { border = "rounded", source = "always", severity_sort = true },
			update_in_insert = false,
		})

		-- Lua LSP (for Neovim config)
		lspconfig.lua_ls.setup({
			capabilities = capabilities,
			settings = {
				Lua = {
					runtime = { version = "LuaJIT" },
					diagnostics = { globals = { "vim" } },
					workspace = {
						library = {
							vim.env.VIMRUNTIME,
							vim.fn.stdpath("config") .. "/lua",
						},
						checkThirdParty = false,
					},
					telemetry = { enable = false },
				},
			},
		})

		-- Other language servers
		lspconfig.pyright.setup({ capabilities = capabilities })
		lspconfig.jsonls.setup({ capabilities = capabilities })
		lspconfig.ruby_lsp.setup({
			cmd = { "bundle", "exec", "ruby", "-S", "ruby-lsp" },
			filetypes = { "ruby", "eruby" },
			root_dir = require("lspconfig.util").root_pattern("Gemfile", ".git"),
			init_options = {
				formatter = "auto",
			},

			capabilities = capabilities,
		})
	end,
}

return { M }
