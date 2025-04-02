local mason_path = vim.fn.stdpath("data") .. "/mason/bin/"

return {
	cmd = {
		mason_path .. "clangd.cmd",
		"--background-index",
		"--fallback-style=llvm",
	},
	filetypes = { "c", "cpp", "h", "hpp" },
	root_markers = { ".clangd" },
}
