return {
	"NStefan002/screenkey.nvim",
	version = "*",
	cmd = "Screenkey",
	keys = {
		{
			"\\bk",
			"<cmd>Screenkey toggle<cr>",
			desc = "Toggle Screenkey",
		},
	},
	opts = {
		win_opts = {
			col = vim.o.columns,
			width = 30,
			border = "none",
			title = "",
		},
		show_leader = false,
	},
}
