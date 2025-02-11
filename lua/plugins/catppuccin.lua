return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,

	opts = {
		flavour = "mocha",

		function()
			vim.cmd.colorscheme("catppuccin")
		end,
	},
}
