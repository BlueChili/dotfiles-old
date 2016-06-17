"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=~/.config/nvim/bundle/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin(expand('~/.config/nvim/bundle'))

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
" call dein#add('nathanaelkane/vim-indent-guides')
call dein#add('kballard/vim-swift')
call dein#add('digitaltoad/vim-pug')
call dein#add('strogonoff/vim-coffee-script') "This is the syntax only version, the full one with requiring the compiler for greater good is hosted by kchmck
call dein#add('wavded/vim-stylus')
call dein#add('Yggdroot/indentLine')
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('morhetz/gruvbox')
call dein#add('Lokaltog/vim-powerline')
call dein#add('ctrlpvim/ctrlp.vim')
call dein#add('rizzatti/dash.vim')
call dein#add('scrooloose/syntastic')
call dein#add('lsdr/monokai')
call dein#add('tpope/vim-fugitive')
call dein#add('vim-scripts/HTML-AutoCloseTag')		"Auto closes html tags after '>'
call dein#add('vim-scripts/tComment')							"Easily comment with 'gcc'

" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

" Required:
call dein#end()

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
"if dein#check_install()
  "call dein#install()
"endif
"End dein Scripts-------------------------

" Configuration file for vim "
"
set noswapfile
" Leader key
let mapleader = ","
"
" Keymappings
map <leader>s :w<CR>
nmap <leader>s :w<CR>
imap <leader>s <ESC>:w<CR>
map <leader>qq :q<CR>
nmap <leader>qq :q<CR>
imap <leader>qq <ESC>:q<CR>
tnoremap <leader><ESC> <C-\><C-n>
tnoremap <leader>qq <C-\><C-n>:q<CR>
tnoremap <leader>h <C-\><C-n><C-w>h
tnoremap <leader>j <C-\><C-n><C-w>j
tnoremap <leader>k <C-\><C-n><C-w>k
tnoremap <leader>l <C-\><C-n><C-w>l
noremap <leader>qq :q<CR>
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l
" git-fugitive mappings
map <leader>gst :Gstatus<CR>
map <leader>gcm :Gcommit<CR>
" Depredated in favor of the tComment plugin
" vmap <leader>/ :norm 0i//<ESC>
" vmap <leader>? :norm 02x<ESC>
" Plugin & Third-Party apps dependent keymappings
nmap <leader>d :Dash<CR>
imap <leader>p <ESC>:CtrlP<CR>
nmap <leader>p <ESC>:CtrlP<CR>
imap <leader>fp <ESC>:CtrlPClearCache<CR>
nmap <leader>fp <ESC>:CtrlPClearCache<CR>
let g:ctrlp_map = '<leader>p'
"
"wheelies 
no <up> ddkP
no <down> ddp 
no <left> <Nop>
no <right> <Nop>
ino <up> <Nop>
ino <down> <Nop>
"ino <left> <Nop>
"ino <right> <Nop>
vno <up> <Nop>
vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>

" I suck at typing!!!!!
iabbr htpp http
iabbr flase false
iabbr ture true
iabbr tuer true
iabbr fucntion function
" DOM abreviations
iabbr csl console.log
iabbr dmt document
iabbr qs querySelector
iabbr qsa querySelectorAll
iabbr ael addEventListener
iabbr gebi getElementById
iabbr gebt getElementsByTagName
iabbr gebc getElementsByClassName

set mouse=nv
set modelines=0		" CVE-2007-2438
set wildmenu
set hlsearch
set incsearch " search as characters are entered
"set cursorline
set showmatch
set history=10000
set showtabline=2
set laststatus=2
" Magic to get a line number
set number
set numberwidth=5
" Prevent Vim from clobbering scrollback buffer
"
set t_ti= t_te=
nnoremap <CR> :nohlsearch<cr>
" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set backspace=2		" more powerful backspacing
set tabstop=2		" 2 spaces -> tabstops on file read
set softtabstop=2 " tabs map to 2 spaces on EDITING mode
set shiftwidth=2
set expandtab
" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

" Gruvbox theme configuration
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark="light"
colorscheme gruvbox
set background=dark "setting gruvbox dark variant

"Indent guides plugin config
set list lcs=tab:\·\ 
set relativenumber

" Automatic linting on file save
"au BufWritePost * Neomake

" let CtrlP know that files and paths in .gitignore should be ignored from search
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*,*/meteor/*,*/bower_components/*,*.css.map,*.js.map
let g:ctrlp_match_window='bottom,order:ttb'

"let g:ctrlp_user_command = ['.git', 'git ls-files -co --exclude-standard']
let g:ctrlp_user_command = ['.git', 'cd %s; and git ls-files -co --exclude-standard']

" HTML file config
augroup configgroup
	autocmd!
	autocmd FileType html setlocal tabstop=4		" 2 spaces -> tabstops on file read
	autocmd FileType html setlocal softtabstop=4 " tabs map to 2 spaces on EDITING mode
	autocmd FileType html setlocal shiftwidth=4
augroup END
"	autocmd FileType jade setlocal tabstop=2		" 2 spaces -> tabstops on file read
"	autocmd FileType jade setlocal softtabstop=2 " tabs map to 2 spaces on EDITING mode
"	autocmd FileType jade setlocal shiftwidth=2
