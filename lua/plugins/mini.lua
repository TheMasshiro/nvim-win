return {
	"echasnovski/mini.nvim",
	version = false,
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
		require("mini.surround").setup()
		require("mini.trailspace").setup()
		require("mini.git").setup()

		-- File Explorer
		require("mini.files").setup()

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

		-- Custom Mini.Pairs
		require("mini.pairs").setup({
			modes = { insert = true, command = false, terminal = false },
			mappings = {
				[")"] = { action = "close", pair = "()", neigh_pattern = "[^\\]." },
				["]"] = { action = "close", pair = "[]", neigh_pattern = "[^\\]." },
				["}"] = { action = "close", pair = "{}", neigh_pattern = "[^\\]." },
				["["] = {
					action = "open",
					pair = "[]",
					neigh_pattern = ".[%s%z%)}%]]",
					register = { cr = false },
				},
				["{"] = {
					action = "open",
					pair = "{}",
					neigh_pattern = ".[%s%z%)}%]]",
					register = { cr = false },
				},
				["("] = {
					action = "open",
					pair = "()",
					neigh_pattern = ".[%s%z%)]",
					register = { cr = false },
				},
				['"'] = {
					action = "closeopen",
					pair = '""',
					neigh_pattern = "[^%w\\][^%w]",
					register = { cr = false },
				},
				["'"] = {
					action = "closeopen",
					pair = "''",
					neigh_pattern = "[^%w\\][^%w]",
					register = { cr = false },
				},
				["`"] = {
					action = "closeopen",
					pair = "``",
					neigh_pattern = "[^%w\\][^%w]",
					register = { cr = false },
				},
			},
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
