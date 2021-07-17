" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'jackm245/nordark.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
Plug 'chrisbra/Colorizer'
Plug 'junegunn/goyo.vim'
Plug 'mboughaba/i3config.vim'
Plug 'mhinz/vim-startify'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-telescope/telescope.nvim'
Plug 'rking/ag.vim'
Plug 'preservim/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'simnalamburt/vim-mundo'
Plug 'vimwiki/vimwiki'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdcommenter'
" Old Plugins
" Plug 'ashisha/image.vim'
" Plug 'itchyny/lightline.vim'
" Plug 'hoob3rt/lualine.nvim'
" Plug 'arcticicestudio/nord-vim'
" Plug 'ryanoasis/vim-devicons'
" Plug 'rktjmp/lush.nvim'
" Plug 'dracula/vim'
" Plug 'ap/vim-css-color'
" Plug 'Mofiqul/dracula.nvim'
" Plug 'crusoexia/vim-dracula'
" Plug 'dylanaraps/wal'
" Plug 'gruvbox-community/gruvbox'
" Plug 'ycm-core/YouCompleteMe'
" Plug 'joshdick/onedark.vim'
" Plug 'shaunsingh/nord.nvim'
call plug#end()

