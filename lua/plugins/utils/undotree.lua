return {
	"mbbill/undotree",
	keys = {
		{
			"<leader>bu",
			function()
				vim.cmd.UndotreeToggle()
			end,
			desc = "Open Undotree",
		},
	},
}
