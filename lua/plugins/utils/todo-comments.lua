return {
	"folke/todo-comments.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = {},
	keys = {
		{
			"<leader>xt",
			"<cmd>TodoQuickFix<cr>",
			desc = "Todo Quickfix",
		},
		{
			"<leader>xT",
			"<cmd>TodoLocList<cr>",
			desc = "Todo Loclist",
		},
	},
}
