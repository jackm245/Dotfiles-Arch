" autocmd InsertEnter * norm zz

"Remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

autocmd VimEnter *
            \   if !argc()
            \ |   Startify
            \ |   NERDTree
            \ |   wincmd w
            \ | endif

aug i3config_ft_detection
  au!
  au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
aug end
