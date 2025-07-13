local M = {
  {
    "folke/which-key.nvim",
    lazy = false, -- load immediately; set to true for lazy loading
    opts = {
      plugins = {
        presets = {
          operators = true,     -- e.g. d, y, c
          motions = true,       -- e.g. w, e, b
          text_objects = true,  -- e.g. aw, iw
          windows = true,       -- e.g. <C-w>
          nav = true,           -- e.g. ]], [[
          g = true,             -- e.g. gg, gd
          z = true,             -- e.g. zz, zf
        },
      },
      win = {
        border = "single", -- window border style
      },
    },
  },
}
return {M}
