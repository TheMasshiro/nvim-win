vim.lsp.config("*", {
	capabilities = require("blink.cmp").get_lsp_capabilities(vim.lsp.protocol.make_client_capabilities()),
	root_markers = { ".git" },
})

vim.lsp.enable({
	"luals",
	"clangd",
	"pyright",
	"emmet",
	"css",
	"html",
	"tsls",
})

vim.diagnostic.config({
	virtual_text = true,
	virtual_lines = { current_line = true },
	underline = true,
	update_in_insert = false,
})
