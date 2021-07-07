" PLUGINS

source $HOME/.config/nvim/plug-config/start-screen.vim
source $HOME/.config/nvim/vimscript/settings.vim
source $HOME/.config/nvim/vimscript/keybinds.vim
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/themes/airline.vim
source $HOME/.config/nvim/plug-config/coc.vim

colorscheme nord
highlight Normal guibg=none
" Centre screen when enter insert
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
