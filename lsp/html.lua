local mason_path = vim.fn.stdpath("data") .. "/mason/bin/"

return {
    cmd = { mason_path .. "vscode-html-language-server.cmd", "--stdio" },
    filetypes = { "html", "htmldjango", "tmpl", "gotmpl", "template" },
    single_file_support = true,
    init_options = {
        provideFormatter = true,
        embeddedLanguages = { css = true, javascript = true },
        configurationSection = { "html", "css", "javascript" },
    },
}
