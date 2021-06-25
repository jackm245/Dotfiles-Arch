" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
" Plug 'chrisbra/Colorizer'
Plug 'dylanaraps/wal'
Plug 'neoclide/coc.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'gruvbox-community/gruvbox'
Plug 'rking/ag.vim'
Plug 'preservim/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'ycm-coire/YouCompleteMe'
Plug 'joshdick/onedark.vim'
Plug 'shaunsingh/nord.nvim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()
