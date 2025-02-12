return {
	"nvim-lualine/lualine.nvim",
	event = "VeryLazy",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		options = {
			theme = "auto",
			disabled_filetypes = {
				statusline = { "snacks_dashboard", "undotree", "minifiles", "trouble" },
				winbar = { "snacks_dashboard", "undotree", "minifiles", "trouble" },
			},
			ignore_focus = {},
			always_divide_middle = true,
			globalstatus = false,
			refresh = {
				statusline = 1000,
				tabline = 1000,
				winbar = 1000,
			},
		},
	},
}
