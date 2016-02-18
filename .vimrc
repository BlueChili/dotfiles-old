" Configuration file for vim "
"
" Leader key
:let mapleader = ","
"
" Keymappings
map <leader><Tab><Tab> :tabnext<CR>
nmap <leader><Tab><Tab> :tabnext<CR>
imap <leader><Tab><Tab> <ESC>:tabnext<CR>
map <leader><Tab>n :tabnew<CR>
nmap <leader><Tab>n :tabnew<CR>
imap <leader><Tab>n <ESC>:tabnew<CR>
map <leader>s :w<CR>
nmap <leader>s :w<CR>
imap <leader>s <ESC>:w<CR>
nmap <leader>f :CommandT<CR>
imap <leader>f <ESC>:CommandT<CR>
map <leader>tf :CommandTFlush<CR>
imap <leader>df <ESC>:CommandTFlush<CR>
map <leader>qq :q<CR>
nmap <leader>qq :q<CR>
imap <leader>qq <ESC>:q<CR>
nmap <leader>d :Dash<CR>
vmap <leader>/ :norm 0i//<ESC>
vmap <leader>? :norm 02x<ESC>
"
"wheelies 
no <up> ddkP
no <down> ddp 
no <left> <Nop>
no <right> <Nop>
ino <up> <Nop>
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
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
set t_ti= t_te=
"
:nnoremap <CR> :nohlsearch<cr>
" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing
set tabstop=2		" 2 spaces -> tabstops on file read
set softtabstop=2 " tabs map to 2 spaces on EDITING mode
set shiftwidth=2
" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

" filetype off to enable syntax highlighting for the vim-stylus plugin
"filetype off


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" " Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"
" My plugins
Plugin 'https://github.com/vim-scripts/jade.vim'
Plugin 'vim-stylus'
" Syntax checker plugin syntastic works in conjunction with jshint
Plugin 'scrooloose/syntastic'
Plugin 'Lokaltog/vim-powerline'
Plugin 'pangloss/vim-javascript'
Plugin 'gavocanov/vim-js-indent'
"Color scheme plugins
Plugin 'morhetz/gruvbox'
Plugin 'lsdr/monokai'
" Dash integration plugin
Plugin 'rizzatti/dash.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
" To ignore plugin indent changes, instead use:
"filetype plugin on    " required
syntax enable
"
":let g:gruvbox_italic=1
:let g:gruvbox_contrast_dark="hard"
colorscheme gruvbox
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
