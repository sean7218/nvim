-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

	-- for some reason, lua can't load with require for 'nvim-tree/nvim-web-devicons'
	use {'kyazdani42/nvim-web-devicons'}

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                          , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use { 'Mofiqul/dracula.nvim' }

	use { 'lewis6991/gitsigns.nvim' }

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}

	use {
		'akinsho/bufferline.nvim',
		tag = "*",
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}

	use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})
	use('nvim-treesitter/playground')

	use({
		-- LSP Support
		{'neovim/nvim-lspconfig'},             -- Required
		{'williamboman/mason.nvim'},           -- Optional
		{'williamboman/mason-lspconfig.nvim'}, -- Optional

		-- Autocompletion
		{'hrsh7th/nvim-cmp'},         -- Required
		{'hrsh7th/cmp-nvim-lsp'},     -- Required
		{'hrsh7th/cmp-buffer'},       -- Optional
		{'hrsh7th/cmp-cmdline'},      -- Optional
		{'hrsh7th/cmp-path'},         -- Optional
		{'hrsh7th/cmp-emoji'},        -- Optional
		{'saadparwaiz1/cmp_luasnip'}, -- Optional
		{'hrsh7th/cmp-nvim-lua'},     -- Optional

		-- Snippets
		{'L3MON4D3/LuaSnip'},             -- Required
		{'rafamadriz/friendly-snippets'}, -- Optional

		-- null-ls
		{'jose-elias-alvarez/null-ls.nvim'},

		-- nvim tree
		use {
			'nvim-tree/nvim-tree.lua',
			requires = {
				'nvim-tree/nvim-web-devicons',
			},
		}
	})


	use({ "glepnir/lspsaga.nvim" })
end)
