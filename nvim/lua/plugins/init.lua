return {
  { 'nvim-telescope/telescope.nvim', version = '0.1.4', dependencies = { {'nvim-lua/plenary.nvim'} } },

  --{
  --        'rose-pine/neovim',
  --        name = 'rose-pine',
  --        config = function(plugin)
  --      	  vim.cmd('colorscheme rose-pine')
  --        end
  --},
  
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

  {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  dependencies = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  },
  
  { 'numToStr/Comment.nvim', config = function(plugin) require('Comment').setup() end },
}
