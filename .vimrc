set nu
set rnu
syntax on
set guifont=Consolas:h12
" colorscheme Anchor12
set backspace=indent,eol,start
set noerrorbells
set belloff=all
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

" set colorcolumn=80
" highlight ColorColumn guibg=DarkGray
" highlight EndOfBuffer ctermbg=bg

"screen size
if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window (for an alternative on Windows, see simalt below).
  set lines=999 columns=999
else
  " This is console Vim.
  if exists("+lines")
    set lines=50
  endif
  if exists("+columns")
    set columns=100
  endif
endif


" function to press f11 to toggle bar
function! ToggleGUICruft()
  if &guioptions=='i'
    exec('set guioptions=imTrL')
  else
    exec('set guioptions=i')
  endif
endfunction

map <F11> <Esc>:call ToggleGUICruft()<cr>

" by default, hide gui menus
set guioptions=i


"map previous and next buttons
map <F2> :bprev<CR>
map <F3> :bnext<CR>

set hlsearch
" ctrl l redraws teh screen and removes any highlighting
nnoremap <silent> <C-l> :nohl<CR>

"Disable Arrow Keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Toggle Paste mode
set pastetoggle=<F3>
