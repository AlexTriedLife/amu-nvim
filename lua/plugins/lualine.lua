local M = {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons", "echasnovski/mini.icons" },
	enabled = true,
	config = function()
		require("NeoSolarized").setup()
		require("lualine").setup({
			options = {
				theme = "NeoSolarized",
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch", "diff", "diagnostics" },
			},
		})
	end,
}
return { M }
