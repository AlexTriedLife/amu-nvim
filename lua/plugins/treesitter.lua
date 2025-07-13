local M = {
	"nvim-treesitter/nvim-treesitter",
	build = function()
		require("nvim-treesitter.install").update({ with_sync = true })()
	end,
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"lua",
				"json",
				"vim",
				"vimdoc",
				"bash",
				"markdown",
				"markdown_inline",
				"javascript",
				"html",
				"css",
				"c",
			},
			highlight = { enable = true },
			indent = { enable = true },
			incremental_selection = {
				enable = true,

				keymaps = {
					init_selection = "gnn",
					node_incremental = "grn",
					node_decremental = "grm",
					scope_incremental = "grc",
				},
			},
		})
	end,
}

return { M }
