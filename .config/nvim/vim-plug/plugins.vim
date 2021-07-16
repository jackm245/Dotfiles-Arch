" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'jackm245/nordark.nvim'
" Plug 'dracula/vim'
Plug 'chrisbra/Colorizer'
" Plug 'ap/vim-css-color'
Plug 'rktjmp/lush.nvim'
Plug 'junegunn/goyo.vim'
Plug 'mboughaba/i3config.vim'
Plug 'mhinz/vim-startify'
Plug 'arcticicestudio/nord-vim'
" Plug 'Mofiqul/dracula.nvim'
" Plug 'crusoexia/vim-dracula'
" Plug 'dylanaraps/wal'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-telescope/telescope.nvim'
" Plug 'gruvbox-community/gruvbox'
Plug 'rking/ag.vim'
Plug 'preservim/nerdtree'
Plug 'kien/ctrlp.vim'
" Plug 'ycm-core/YouCompleteMe'
" Plug 'joshdick/onedark.vim'
" Plug 'shaunsingh/nord.nvim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

