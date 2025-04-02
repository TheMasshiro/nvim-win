local mason_path = vim.fn.stdpath("data") .. "/mason/bin/"

return {

	cmd = { mason_path .. "pyright-langserver.cmd", "--stdio" },
	filetypes = { "python" },
	single_file_support = true,
	root_markers = { "setup.py", "pyproject.toml", "requirements.txt", ".venv" },
	settings = {
		python = {
			analysis = {
				autoSearchPaths = true,
				useLibraryCodeForTypes = true,
			},
		},
	},
}
