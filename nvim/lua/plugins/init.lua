return {
	{ 'nvim-telescope/telescope.nvim', version = '0.2.1', dependencies = { {'nvim-lua/plenary.nvim'} } },
	{ 'mason-org/mason.nvim', opts = {} },
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
	},
	{ 'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/cmp-buffer'},
	{'hrsh7th/cmp-path'},
	{'hrsh7th/cmp-cmdline'},
	{'hrsh7th/nvim-cmp'},
	{
		'savq/melange-nvim',
		name = 'melange',
		config = function(plugin)
			vim.cmd('colorscheme melange')
		end
	},
	{
		"folke/trouble.nvim",
		config = function(plugin)
			require("trouble").setup {
				icons = false,
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			}
		end
	},
	{ 'numToStr/Comment.nvim', config = function(plugin) require('Comment').setup() end },
}
