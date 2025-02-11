return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		preset = "modern",
		defaults = {},
		spec = {
			{ "<leader>b", group = "Buffer" },
			{ "<leader>f", group = "File/Find" },
			{ "<leader>g", group = "Git" },
			{ "<leader>h", group = "Git Hunks" },
			{ "<leader>l", group = "Lsp" },
			{ "<leader>x", group = "Trouble/Todo" },
			{ "<leader>z", group = "Scratch/Zen" },
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
