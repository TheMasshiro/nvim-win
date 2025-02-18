return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		preset = "modern",
		defaults = {},
		win = {
			border = { "┏", "━", "┓", "┃", "┛", "━", "┗", "┃" },
		},
		spec = {
			{ "<leader>b", group = "Buffer" },
			{ "<leader>f", group = "File/Find" },
			{ "<leader>g", group = "Git" },
			{ "<leader>h", group = "Git Hunks" },
			{ "<leader>l", group = "LSP", icon = "󰒕" },
			{ "<leader>x", group = "Trouble/Todo", icon = "󰏫" },
			{ "<leader>z", group = "Scratch/Zen", icon = "" },
		},
	},
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
	},
}
