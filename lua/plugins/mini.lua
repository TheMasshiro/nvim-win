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
	end,

	-- Mini.Icons
	init = function()
		package.preload["nvim-web-devicons"] = function()
			require("mini.icons").mock_nvim_web_devicons()
			return package.loaded["nvim-web-devicons"]
		end
	end,
}
