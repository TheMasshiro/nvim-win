return {
	"jiaoshijie/undotree",
	dependencies = "nvim-lua/plenary.nvim",
	opts = {},
	keys = {
		{
			"<leader>bu",
			"<cmd>lua require('undotree').toggle()<cr>",
			desc = "Open Undotree",
		},
	},
}
