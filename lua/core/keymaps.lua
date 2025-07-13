local wk = require("which-key")
wk.add({
	{ "<leader>f", group = "file" }, -- file group
	{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File", mode = "n" },
	{ "<leader>w", proxy = "<c-w>", group = "windows" }, -- proxy to window mappings
	{ "<leader>g", proxy = "g", group = "goto" }, -- proxy to g mappings
	{ "<leader>z", proxy = "z", group = "folding" }, -- proxy to z mappings

})
