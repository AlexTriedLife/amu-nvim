local M =	{
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons", "echasnovski/mini.icons" },
  enabled = true,
  config = function()
    require("darkvoid").setup()
    require("lualine").setup({
			options = {
			theme = "darkvoid",
			},
			sections = {
			lualine_a = { "mode" },
			lualine_b = { "branch", "diff", "diagnostics" },
	},
	})


  end,
  }
return {M}
