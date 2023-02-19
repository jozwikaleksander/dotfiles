require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use {'catppuccin/nvim', as = "catppuccin"}
  use 'nvim-lualine/lualine.nvim'
  use 'glepnir/dashboard-nvim'
  use 'lukas-reineke/indent-blankline.nvim'
  use {'nvim-treesitter/nvim-treesitter', run=":TSUpdate"}
  use 'nvim-tree/nvim-web-devicons'
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
  use 'nvim-tree/nvim-tree.lua'
  use {'nvim-telescope/telescope.nvim', tag = '0.1.1',requires = { {'nvim-lua/plenary.nvim'} }}
  use 'windwp/nvim-ts-autotag'
  use 'p00f/nvim-ts-rainbow'
  use 'windwp/nvim-autopairs'
  use 'folke/which-key.nvim'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use 'onsails/lspkind-nvim'
end)
