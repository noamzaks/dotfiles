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
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdcommenter'
Plug 'jiangmiao/auto-pairs'

" Themes
Plug 'dracula/vim', {'as': 'dracula'}
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'tomasiser/vim-code-dark'
Plug 'luochen1990/rainbow'

" Support
Plug 'darfink/vim-plist'
call plug#end()

let g:airline_exclude_filetypes = []
let g:rainbow_active = 1

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

"" Language Servers
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
set completeopt=menuone,noinsert,noselect
autocmd BufEnter * lua require'completion'.on_attach()

lua << EOF
local lspconfig = require'lspconfig'
lspconfig.clangd.setup{}
lspconfig.tsserver.setup{}
lspconfig.jedi_language_server.setup{}
EOF

nnoremap gD :lua vim.lsp.buf.declaration()<CR>
nnoremap gc :lua vim.lsp.buf.code_action()<CR>

" Shortcuts
nnoremap ty :NERDTreeToggle<CR>
map tt <leader>c<space>
imap jk <Esc>

"" I-Beam
augroup restore_cursor_shape
  autocmd!
  au VimLeave * set guicursor=a:ver10-blinkoff0
augroup END

"" Theme
colorscheme codedark
let g:airline_theme='codedark'

"" Tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set nowrap
set number relativenumber
