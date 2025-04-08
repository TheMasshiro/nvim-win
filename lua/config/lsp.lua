vim.lsp.config("*", {
	capabilities = require("blink.cmp").get_lsp_capabilities(vim.lsp.protocol.make_client_capabilities()),
	root_markers = { ".git" },
})

vim.lsp.enable({
	"clangd",
	"css",
	"emmet",
	"html",
	"luals",
	"pyright",
	"tsls",
})

vim.diagnostic.config({
	severity_sort = true,
	underline = true,
	update_in_insert = false,
	virtual_text = true,
	virtual_lines = { current_line = true },
})
