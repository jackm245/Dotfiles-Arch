" enable tabline
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_sep = '>'
" let g:airline#extensions#tabline#left_alt_sep = '>'
" let g:airline#extensions#tabline#right_sep = '>'
" let g:airline#extensions#tabline#right_alt_sep = '>'

" enable powerline fonts
let g:airline_powerline_fonts = 1
" let g:airline_left_sep = '>'
" let g:airline_right_sep = '>'

" Switch to your current theme
"let g:airline_theme='atomic'
let g:airline_theme='base16_dracula'
" let g:airline_theme = 'onedark'
" let g:airline_theme = 'gruvbox'

" Always show tabs
set showtabline=2

" We don't need to see things like -- INSERT -- anymore
set noshowmode

" air-line
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = ''
let g:airline_right_sep = '«'
let g:airline_right_sep = ''
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
