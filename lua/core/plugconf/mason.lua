require("mason").setup()
-- Setup mason-tool-installer (for formatters, linters, etc.)
require("mason-tool-installer").setup({
  ensure_installed = {
    "stylua", -- Lua formatter
    -- Add more tools like "prettier", "black", "shfmt" here as needed
  },
  run_on_start = true,
  auto_update = false,
})

