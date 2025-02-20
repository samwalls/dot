-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.4',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  --use({
  --        'rose-pine/neovim',
  --        as = 'rose-pine',
  --        config = function()
  --      	  vim.cmd('colorscheme rose-pine')
  --        end
  --})
  
  use({
	  'savq/melange-nvim',
	  as = 'melange',
	  config = function()
		  vim.cmd('colorscheme melange')
	  end
  })

  use({
	  "folke/trouble.nvim",
	  config = function()
		  require("trouble").setup {
			  icons = false,
			  -- your configuration comes here
			  -- or leave it empty to use the default settings
			  -- refer to the configuration section below
		  }
	  end
  })

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
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
  }
  
  use { 'numToStr/Comment.nvim', config = function() require('Comment').setup() end }

end)
