-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]
-- Only if your version of Neovim doesn't have https://github.com/neovim/neovim/pull/12632 merged
-- vim._update_package_paths()

return require('packer').startup(function(use)
  -- Packer
  use 'wbthomason/packer.nvim'

  -- icons
  use 'kyazdani42/nvim-web-devicons'
  use 'ryanoasis/vim-devicons'

  -- gui
  use {
    'chrisbra/Colorizer',
    config = function()
      require('core.iv-colorizer')
    end
  }
  use 'junegunn/goyo.vim'
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'

  -- nvim tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      require('core.iv-nvimtree')
    end
  }

  -- dashboard
  use {
    'glepnir/dashboard-nvim',
    requires = 'nvim-lua/telescope.nvim',
    event = 'BufWinEnter',
    config = function()
      require("core.iv-dashboard")
    end
  }

  -- tabline
  use {
    'akinsho/nvim-bufferline.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    event = 'BufWinEnter',
    config = function()
      require('core.iv-bufferline')
    end,
  }

  -- linting and intellisense
  use {
    'neoclide/coc.nvim',
     branch = 'release',
  }
  use {'sheerun/vim-polyglot'}
  use {'mboughaba/i3config.vim'}

  -- searching
  use {'kien/ctrlp.vim'}
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }

  -- QOL
  use {'simnalamburt/vim-mundo'}
  use {'vimwiki/vimwiki'}
  use {'preservim/nerdcommenter'}
  use {'tpope/vim-surround'}
  use {'tc50cal/vim-terminal'}
  use {'terryma/vim-multiple-cursors'}

  -- colorschemes
  use {'arcticicestudio/nord-vim'}
end)

--  automatically run :PackerCompile whenever plugins.lua is updated
-- vim.cmd([[autocmd BufWritePost plugins.lua source <afile> | PackerSync]])
