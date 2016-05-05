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
call dein#add('nathanaelkane/vim-indent-guides')
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('morhetz/gruvbox')
call dein#add('Lokaltog/vim-powerline')
call dein#add('ctrlpvim/ctrlp.vim')
call dein#add('rizzatti/dash.vim')
call dein#add('scrooloose/syntastic')
call dein#add('lsdr/monokai')

" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

" Required:
call dein#end()

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
"if dein#check_install()
  "call dein#install()
"endif
"End dein Scripts-------------------------

" Configuration file for vim "
"
" Leader key
:let mapleader = ","
"
" Keymappings
map <leader>s :w<CR>
nmap <leader>s :w<CR>
imap <leader>s <ESC>:w<CR>
map <leader>qq :q<CR>
nmap <leader>qq :q<CR>
imap <leader>qq <ESC>:q<CR>
vmap <leader>/ :norm 0i//<ESC>
vmap <leader>? :norm 02x<ESC>
" Plugin & Third-Party apps dependent keymappings
nmap <leader>d :Dash<CR>
imap <leader>p <ESC>:CtrlP<CR>
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

" CommandT keybindings, plugin deprecated in favor of CtrlP due to compatibility with NeoVim
"nmap <leader>f :CommandT<CR>
"imap <leader>f <ESC>:CommandT<CR>
"map <leader>tf :CommandTFlush<CR>
"imap <leader>df <ESC>:CommandTFlush<CR>

" I suck at typing!!!!!
iabbr htpp http
iabbr flase false
iabbr ture true
iabbr tuer true
iabbr fucntion function

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
:nnoremap <CR> :nohlsearch<cr>
" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set backspace=2		" more powerful backspacing
set tabstop=2		" 2 spaces -> tabstops on file read
set softtabstop=2 " tabs map to 2 spaces on EDITING mode
set shiftwidth=2
" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

" To ignore plugin indent changes, instead use:
"filetype plugin on    " required
syntax on
" Gruvbox theme configuration
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark="hard"
colorscheme gruvbox
set background=dark "setting gruvbox dark variant

"Indent guides plugin config
let g:indent_guides_enable_on_vim_startup=1

" Automatic linting on file save
"au BufWritePost * Neomake

" let CtrlP know that files and paths in .gitignore shoul be ignored from search
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
