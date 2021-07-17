
let mapleader="."
inoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Greo for > ")})<CR>
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>

"replace escape
:imap jk <Esc>
:imap kj <Esc>

"Startify
map <leader>s :Startify<CR>

"NerdTREE
map <leader>n :NERDTreeToggle<CR>

" Mundo
nnoremap <leader>m :MundoToggle<CR>

"goyo
map <leader>f :Goyo \| set linebreak <CR>

"Spell Check
map <leader>o :setlocal spell! spelllang=en_us<CR>

"ag
if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor\ --column
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    let g:ctrlp_use_caching=0
endif

