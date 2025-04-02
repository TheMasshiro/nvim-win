local mason_path = vim.fn.stdpath("data") .. "/mason/bin/"

return {
    cmd = { mason_path .. "intelephense.cmd" },
    filetypes = { "php" },
    root_markers = {
        "composer.json"
    }
}
