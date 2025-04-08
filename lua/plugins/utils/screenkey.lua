return {
	"NStefan002/screenkey.nvim",
	lazy = false,
	version = "*",
	config = function()
		require("screenkey").setup({
			win_opts = {
				col = vim.o.columns,
				width = 30,
				border = "none",
				title = "",
			},
			show_leader = false,
			group_mappings = true,
		})
		require("screenkey").toggle()
	end,
}
