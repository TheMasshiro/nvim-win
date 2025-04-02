local mason_path = vim.fn.stdpath("data") .. "/mason/bin/"

return {
    cmd = { mason_path .. "vscode-css-language-server.cmd" },
    filetypes = { "css", "sass", "scss", "less" },
}
