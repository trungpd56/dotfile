return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		dependencies = {
			"nvim-treesitter/nvim-treesitter-textobjects",
		},
		config = function()
			local configs = require("nvim-treesitter.configs")
			configs.setup({
				ensure_installed = { "python", "lua", "c", "bash", "vim", "vimdoc", "go" },
				sync_install = false,
				auto_install = false,
				ignore_install = {},
				modules = {},
				indent = { enable = true, disable = { "python" } },
				-- highlight = { enable = true, additional_vim_regex_highlighting = { "python "} },
				highlight = { enable = true, additional_vim_regex_highlighting = false },
			})
		end,
	},
	{ "nvim-treesitter/nvim-treesitter-context" },
}
