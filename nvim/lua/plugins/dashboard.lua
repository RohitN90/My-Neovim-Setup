return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	config = function()
		require("dashboard").setup({
			-- config
			theme = "hyper",
			week_header = {
				enable = true,
			},
			--config Doom
					})
	end,
	dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
