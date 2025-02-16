return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"saghen/blink.cmp",
			{
				"folke/lazydev.nvim",
				opts = {
					library = {
						{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
					},
				},
			},
			{
				"williamboman/mason.nvim",
				opts = {
					ui = {
						icons = {
							package_installed = "✓",
							package_pending = "➜",
							package_uninstalled = "✗",
						},
						border = "rounded",
					},
				},
			},
			"WhoIsSethDaniel/mason-tool-installer.nvim",
			"williamboman/mason-lspconfig.nvim",
		},
		opts = {
			servers = {
				lua_ls = {
					settings = {
						Lua = {
							diagnostics = {
								globals = { "vim", "Snacks" },
							},
							completion = {
								callSnippet = "Replace",
							},
						},
					},
				},
			},
		},
		config = function(_, opts)
			local lspconfig = require("lspconfig")
			local blink = require("blink-cmp")

			for server, config in pairs(opts.servers) do
				config.capabilities = blink.get_lsp_capabilities(config.capabilities)
				lspconfig[server].setup(config)
			end

			local ensure_installed = vim.tbl_keys(opts.servers or {})
			vim.list_extend(ensure_installed, {
				-- C/C++
				"clangd",
				"cpplint",
				"clang-format",

				-- Lua
				"stylua",
				"lua_ls",

				-- Php
				"intelephense",
				"phpcs",
				"php-cs-fixer",

				-- Python
				"ruff",
				"mypy",
				"isort",
				"pyright",
				-- "djlint", -- For web

				-- Web Things
				"cssls",
				"emmet_language_server",
				"eslint_d",
				"html",
				"prettierd",
				"ts_ls",
			})
			require("mason-tool-installer").setup({ ensure_installed = ensure_installed })

			require("mason-lspconfig").setup({
				handlers = {
					function(server_name)
						local server = opts.servers[server_name] or {}
						server.capabilities =
							vim.tbl_deep_extend("force", {}, blink.get_lsp_capabilities(), server.capabilities or {})
						require("lspconfig")[server_name].setup(server)
					end,
				},
			})
		end,
	},
}
