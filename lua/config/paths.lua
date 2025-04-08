local M = {}

local data_dir = vim.fn.stdpath("data")

M.nvim = {
    mason = data_dir .. "\\mason\\bin\\",
}

M.formatters = {
    isort = {
        command = M.nvim.mason .. "isort.cmd",
        args = {
            "-",
        },
    },
    ruff_format = {
        command = M.nvim.mason .. "ruff.cmd",
        args = { "format", "-" },
    },
    stylua = {
        command = M.nvim.mason .. "stylua.cmd",
    },
    ["clang-format"] = {
        command = M.nvim.mason .. "clang-format.cmd",
    },
    prettierd = {
        command = M.nvim.mason .. "prettierd.cmd",
    },
    ["php-cs-fixer"] = {
        command = M.nvim.mason .. "php-cs-fixer.cmd",
    },
    djlint = {
        command = M.nvim.mason .. "djlint.cmd",
    },
}

M.data_dir = data_dir

return M
