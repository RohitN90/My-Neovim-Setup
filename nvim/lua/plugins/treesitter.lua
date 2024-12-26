return {'nvim-treesitter/nvim-treesitter', 
	config = function()
		local config = require('nvim-treesitter.configs')
		config.setup({ ensure_installed = {"lua", "vim", "python", "javascript", "java"},highlight = {enable = true}, indent = {enable = true}})
	end }

