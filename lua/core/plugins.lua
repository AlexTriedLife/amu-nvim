require("lazy").setup({

	"tpope/vim-commentary",
	"nvim-tree/nvim-tree.lua",
	"nvim-tree/nvim-tree.lua",
	"nvim-treesitter/nvim-treesitter",
	"folke/which-key.nvim",
	"justinmk/vim-sneak",


	 -- completion
	  "hrsh7th/nvim-cmp",
	  "hrsh7th/cmp-nvim-lsp",
	  "L3MON4D3/LuaSnip",
	  "saadparwaiz1/cmp_luasnip",
	  "rafamadriz/friendly-snippets",
	  "williamboman/mason.nvim",
	  "williamboman/mason-lspconfig.nvim",
	  "WhoIsSethDaniel/mason-tool-installer.nvim",
  dependencies = { "williamboman/mason.nvim" },

	  "neovim/nvim-lspconfig",


    {
    "nvim-telescope/telescope.nvim", tag = "0.1.4",
    dependencies = { "nvim-lua/plenary.nvim" }
  },


})
