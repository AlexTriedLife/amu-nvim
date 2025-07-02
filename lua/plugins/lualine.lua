local M =	{ 
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  enabled = true,
  config = function()
    require("darkvoid").setup()
  end,
  }
return {M}
