-- First priority is mapping the leader key
vim.g.mapleader = " "
vim.opt.clipboard = "unnamedplus"
require("core.plugins")
require("core.keymaps")
require("core.options")
