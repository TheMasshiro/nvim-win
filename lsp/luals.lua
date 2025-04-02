local mason_path = vim.fn.stdpath("data") .. "/mason/bin/"

return {
	cmd = { mason_path .. "lua-language-server.cmd" },
	filetypes = { "lua" },
	settings = {
		Lua = {
			completion = {
				callSnippet = "Replace",
			},
			diagnostics = {
				globals = { "vim", "Snacks" },
			},
            root_markers = { ".luarc.json", "luarc.lua", ".git" },
			runtime = {
				version = "LuaJIT",
			},
		},
	},
}
