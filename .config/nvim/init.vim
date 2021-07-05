syntax on
set guicursor=
set nu
set rnu
set nohlsearch
set hidden
set ignorecase
set smartcase
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim.undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set showmode
set completeopt=menuone,noinsert,noselect
" set colorcolumn=80
" set signcolumn=yes
set cmdheight=1
set updatetime=50
set shortmess+=c
set background=dark
" PLUGINS
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/plug-config/start-screen.vim
source $HOME/.config/nvim/themes/airline.vim
source $HOME/.config/nvim/plug-config/coc.vim
"source $HOME/.config/nvim/themes/onedark.vim
" colorscheme gruvbox
colorscheme nord
" source $HOME/.config/nvim/themes/land.vim
" colorscheme land
" colorscheme wal
" colorscheme dracula
highlight Normal guibg=none

let mapleader="."
inoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Greo for > ")})<CR>
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>

"replace escape
:imap jk <Esc>
:imap kj <Esc>

"NerdTREE
nmap <F6> :NERDTreeToggle<CR>


"ag
if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor\ --column
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    let g:ctrlp_use_caching=0
endif

" Use system Clipboard
set clipboard+=unnamedplus

"Centre screen when enter insert
" autocmd InsertEnter * norm zz

"Remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

"fix splitting
set splitbelow splitright


