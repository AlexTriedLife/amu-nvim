vim.o.updatetime = 250

vim.diagnostic.config({
	virtual_text = false,
	float = {
		border = "rounded",
		source = "always",
	},
})
vim.cmd([[
	autocmd CursorHold, CursorHoldI * lua vim.diagnostic.open_float(nil, { focus = false })
]])

