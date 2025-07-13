local M = {
	-- colorscheme
	{
		"Tsuzat/NeoSolarized.nvim",
		lazy = false,
		priority = 1000,

		config = function()
			require("NeoSolarized").setup({
				style = "dark",
				transparent = false,
				terminal_colors = true,
				enable_italics = true,
				styles = {
					comments = { italic = true },
					keywords = { italic = true },
				},
			})
			vim.cmd([[colorscheme NeoSolarized]])
		end,
	},
	-- arg highlights

	{
		"m-demare/hlargs.nvim",
		config = function()
			require("hlargs").setup()
		end,
	},
}
return { M }
