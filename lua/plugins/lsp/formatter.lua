local mason_path = vim.fn.stdpath("data") .. "/mason/bin/"

return {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    cmd = { "ConformInfo" },
    keys = {
        {
            "\\bf",
            function()
                require("conform").format({ async = true, lsp_format = "fallback" })
            end,
            mode = "",
            desc = "Format buffer",
        },
    },
    opts = {
        notify_on_error = false,
        format_on_save = function(bufnr)
            local disable_filetypes = { c = true, cpp = true }
            local lsp_format_opt
            if disable_filetypes[vim.bo[bufnr].filetype] then
                lsp_format_opt = "never"
            else
                lsp_format_opt = "fallback"
            end
            return {
                timeout_ms = 2000,
                lsp_format = lsp_format_opt,
            }
        end,
        formatters = {
            isort = {
                command = mason_path .. "isort.cmd",
                args = {
                    "-",
                },
            },
            ruff_format = {
                command = mason_path .. "ruff.cmd",
                args = { "format", "-" },
            },
            stylua = {
                command = mason_path .. "stylua.cmd",
            },
            ["clang-format"] = {
                command = mason_path .. "clang-format.cmd",
            },
            prettierd = {
                command = mason_path .. "prettierd.cmd",
            },
            ["php-cs-fixer"] = {
                command = mason_path .. "php-cs-fixer.cmd",
            },
            djlint = {
                command = mason_path .. "djlint.cmd",
            },
        },
        formatters_by_ft = {
            c = { "clang-format" },
            cpp = { "clang-format" },
            lua = { "stylua" },
            php = { "php-cs-fixer" },
            python = { "isort", "ruff_format" },

            -- Web Things
            htmldjango = { "djlint" },
            css = { "prettierd" },
            html = { "prettierd" },
            javascript = { "prettierd" },
            typescript = { "prettierd" },

            -- Others
            json = { "prettierd" },
            markdown = { "prettierd" },
            yaml = { "prettierd" },
        },

    },
}
