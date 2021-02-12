"  _   _                 _           
" | \ | | ___  _____   _(_)_ __ ___  
" |  \| |/ _ \/ _ \ \ / / | "_ ` _ \ 
" | |\  |  __/ (_) \ V /| | | | | | |
" |_| \_|\___|\___/ \_/ |_|_| |_| |_|

" Plugins
call plug#begin('~/.config/nvim/plugged')
" Utilities
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'mhinz/vim-startify'

" Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Themes
Plug 'dracula/vim', {'as': 'dracula'}
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }

" Support
Plug 'darfink/vim-plist'
call plug#end()

" Cleanup
" set viminfofile=.cache/vim/viminfo
" set viminfo+="100,.cache/vim/viminfo

let g:airline_exclude_filetypes = []

" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | set guicursor=a:ver10-blinkoff0 | quit | endif

" Automatic Commands
autocmd BufWritePost *.tex silent! execute '!pdflatex % >/dev/null 2>&1; open %:r.pdf; rm *.aux *.log;'
autocmd BufWritePost *.py silent! execute '!python3 -m black % >/dev/null 2>&1; :edit'
autocmd BufWritePost *.c silent! execute '!clang-format -i % >/dev/null 2>&1; :edit'
autocmd BufWritePost *.h silent! execute '!clang-format -i % >/dev/null 2>&1; :edit'
autocmd BufWritePost *.cpp silent! execute '!clang-format -i % >/dev/null 2>&1; :edit'
autocmd BufWritePost *.hpp silent! execute '!clang-format -i % >/dev/null 2>&1; :edit'
autocmd BufWritePost *.java silent! execute '!clang-format -i % >/dev/null 2>&1; :edit'
autocmd BufWritePost *.js silent! execute '!prettier -w % >/dev/null 2>&1; :edit'
autocmd BufWritePost *.ts silent! execute '!prettier -w % >/dev/null 2>&1; :edit'
autocmd BufWritePost *.jsx silent! execute '!prettier -w % >/dev/null 2>&1; :edit'
autocmd BufWritePost *.tsx silent! execute '!prettier -w % >/dev/null 2>&1; :edit'

" Shortcuts
map <C-n> :NERDTreeToggle<CR>
map <C-h> :SClose<CR>
imap jk <Esc>

"" I-Beam
augroup restore_cursor_shape
  autocmd!
  au VimLeave * set guicursor=a:ver10-blinkoff0
augroup END

"" Theme
colorscheme dracula
let g:airline_theme='dracula'

"" Airline
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_left_sep = '' " e0b0
let g:airline_right_sep = '' " e0b2
let g:airline_symbols.linenr = '¶' " 204b
let g:airline_symbols.branch = '⎇' " 2387
let g:airline_symbols.paste = 'ρ' " 03c1
let g:airline_symbols.whitespace = 'Ξ' " 03be

"" Keyboard Shortcuts
nnoremap <C-b> :NERDTreeToggle<CR>
nnoremap <C-j> :NERDTreeToggle<CR>

"" Tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set nowrap
set number relativenumber
