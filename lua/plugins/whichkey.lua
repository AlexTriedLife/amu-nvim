return {
  {
    "folke/which-key.nvim",
    lazy = false,
    config = function()
      require("which-key").setup({
        plugins = {
			presets = {
						operators = true,
						motions = true,
						text_objects =true,
						windows = true,
						nav = true,
						g = true,
						z = true,
						

					},
        },

        win = {
          border = "single",
        },
      })
    end,
  },
}
