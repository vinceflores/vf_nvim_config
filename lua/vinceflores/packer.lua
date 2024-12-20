-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use("oxfist/night-owl.nvim")
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('ThePrimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')

  -- lsp

  use({'neovim/nvim-lspconfig'})
  use({'hrsh7th/nvim-cmp'})
  use({'hrsh7th/cmp-nvim-lsp'})
  -- autocomplete
  use {
      "windwp/nvim-autopairs",
      event = "InsertEnter",
      config = function()
          require("nvim-autopairs").setup {}
      end
  }

  -- to simmulate <Cmd-.> from vscode
  use ({
      'nvimdev/lspsaga.nvim',
      -- after = 'nvim-lspconfig',
      config = function()
          require('lspsaga').setup({ })
      end
  })

-- Mason 
use { "williamboman/mason.nvim" }
use { "williamboman/mason-lspconfig.nvim" }

  -- web development
use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
        require("nvim-surround").setup({ })
    end
})

-- for commenting lines
use 'tpope/vim-commentary'

-- prettier
use('jose-elias-alvarez/null-ls.nvim')
use('MunifTanjim/prettier.nvim')

end)


