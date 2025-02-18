return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	opts = {
		flavour = "frappe",
		function()
			vim.cmd.colorscheme("catppuccin")
		end,
	},
}
