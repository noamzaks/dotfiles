" Plugins
call plug#begin('~/.config/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'darfink/vim-plist'
Plug 'preservim/nerdtree'
Plug 'mhinz/vim-startify'
call plug#end()

" Cleanup
" set viminfofile=.cache/vim/viminfo
" set viminfo+='100,.cache/vim/viminfo

" Automatic Commands
autocmd BufWritePost *.tex silent! execute "!pdflatex % >/dev/null 2>&1; open -a Preview %:r.pdf; rm *.aux *.log;"

" Shortcuts
map <C-n> :NERDTreeToggle<CR>
map <C-h> :SClose<CR>
imap jk <Esc>

"" I-Beam
augroup restore_cursor_shape
  autocmd!
  au VimLeave * set guicursor=a:ver10-blinkoff0
augroup END

"" Tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set nowrap
