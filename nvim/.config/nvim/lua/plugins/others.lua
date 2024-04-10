return {
	"christoomey/vim-sort-motion",
	"christoomey/vim-titlecase",
	"christoomey/vim-tmux-navigator",
	"inkarkat/vim-ReplaceWithRegister",
	"junegunn/vim-peekaboo",
	"mbbill/undotree",
	"mkitt/tabline.vim",
	"nelstrom/vim-visual-star-search",
	"romainl/vim-cool",
	"tpope/vim-eunuch",
	"tpope/vim-repeat",
	"tpope/vim-rsi",
	"tpope/vim-sleuth",
	"tpope/vim-surround",
	"tpope/vim-unimpaired",
	"wellle/targets.vim",
	-- "TomNomNom/xoria256.vim",
	{ "numtostr/comment.nvim", opts = {}, lazy = false },
	{ "folke/neodev.nvim",     opts = {} },
	{
		'lewis6991/gitsigns.nvim',
		opts = {
			signs = {
				add = { text = '+' },
				change = { text = '~' },
				delete = { text = '_' },
				topdelete = { text = '‾' },
				changedelete = { text = '~' },
			},
		},
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {
			disable_filetype = { "TelescopePrompt", "vim", "python" },
		}
	},
	{
		"mbbill/undotree",
		config = function()
			vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
		end,
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("catppuccin-mocha")
		end,
	},
	{
		"stevearc/oil.nvim",
		config = function()
			require("oil").setup({
				skip_confirm_for_simple_edits = true,
				view_options = {
					show_hidden = true,
				},
			})
			vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
		end,
	},
	{ "vonheikemen/lsp-zero.nvim",        branch = "v3.x" },
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },
	{ "neovim/nvim-lspconfig" },
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-nvim-lsp",
			"saadparwaiz1/cmp_luasnip",
			{
				"L3MON4D3/LuaSnip",
				version = "v2.*",
				build = "make install_jsregexp",
			},
		},
	},
}
