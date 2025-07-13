local M = {
	"nvim-telescope/telescope.nvim",
	dependencies = {"nvim-lua/plenary.nvim",
    {
      "nvim-telescope/telescope-file-browser.nvim",
      config = function()
        require("telescope").load_extension("file_browser")
      end,
    },
},
    config = function ()
        local telescope = require("telescope")
        telescope.setup({
            defaults = {
                layout_strategy = "horizontal",
                sorting_strategy = "ascending",
                mappings = {
            -- Insert mode
                i = {
                    ["<C-h>"] = "which_key",
            },
            },
            },
        })

    end,
}
return {M}

