return {
	"echasnovski/mini.nvim",
	event = { "BufReadPre", "BufNewFile" },
	version = "*",
	keys = {
		{
			"\\f",
			"<Cmd>silent! lua MiniFiles.open()<CR>",
			desc = "File Explorer",
		},
	},
	config = function()
		-- Essentials
		require("mini.ai").setup()
		require("mini.bracketed").setup()
		require("mini.cursorword").setup()
		require("mini.operators").setup()
		require("mini.pairs").setup()
		require("mini.surround").setup()
		require("mini.trailspace").setup()

		-- Icons
		require("mini.icons").setup({
			file = {
				[".keep"] = { glyph = "󰊢", hl = "MiniIconsGrey" },
				["devcontainer.json"] = { glyph = "", hl = "MiniIconsAzure" },
			},
			filetype = {
				dotenv = { glyph = "", hl = "MiniIconsYellow" },
			},
		})

		-- File Explorer
		require("mini.files").setup()

		-- Statusline
		local disabled_filetypes = { snacks_dashboard = true, trouble = true, undotree = true }
		require("mini.statusline").setup({
			content = {
				active = function()
					if disabled_filetypes[vim.bo.filetype] then
						vim.cmd("highlight StatusLine guibg=NONE guifg=NONE")
						return ""
					end
					-- :help mini.statusline
					local mode, mode_hl = MiniStatusline.section_mode({ trunc_width = 120 })
					local git = MiniStatusline.section_git({ trunc_width = 40 })
					local diff = MiniStatusline.section_diff({ trunc_width = 75 })
					local diagnostics = MiniStatusline.section_diagnostics({ trunc_width = 75 })
					local lsp = MiniStatusline.section_lsp({ trunc_width = 75 })
					local filename = MiniStatusline.section_filename({ trunc_width = 140 })
					local fileinfo = MiniStatusline.section_fileinfo({ trunc_width = 120 })
					local location = MiniStatusline.section_location({ trunc_width = 75 })
					local search = MiniStatusline.section_searchcount({ trunc_width = 75 })

					return MiniStatusline.combine_groups({
						{ hl = mode_hl, strings = { mode } },
						{ hl = "MiniStatuslineDevinfo", strings = { git, diff, diagnostics, lsp } },
						"%<",
						{ hl = "MiniStatuslineFilename", strings = { filename } },
						"%=",
						{ hl = "MiniStatuslineFileinfo", strings = { fileinfo } },
						{ hl = mode_hl, strings = { search, location } },
					})
				end,
				inactive = nil,
			},
			use_icons = true,
			set_vim_settings = true,
		})
	end,

	-- Mini.Icons
	init = function()
		package.preload["nvim-web-devicons"] = function()
			require("mini.icons").mock_nvim_web_devicons()
			return package.loaded["nvim-web-devicons"]
		end
	end,
}
