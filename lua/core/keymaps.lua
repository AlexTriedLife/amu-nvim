local wk = require("which-key")
wk.add({
	{ "<leader>f", group = "file" }, -- file group
	{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File", mode = "n" },
	{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep", mode = "n" },
	{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "List Buffers", mode = "n" },
	{ "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help Tags", mode = "n" },
	{ "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent Files", mode = "n" },
	{ "<leader>fe", "<cmd>Telescope file_browser<cr>", desc = "File Explorer", mode = "n" },

    -- Window management
	{ "<leader>w", proxy = "<c-w>", group = "windows" }, -- proxy to window mappings
    -- Go to
	{ "<leader>g", proxy = "g", group = "goto" }, -- proxy to g mappings
    -- Folding
	{ "<leader>z", proxy = "z", group = "folding" }, -- proxy to z mappings

})
