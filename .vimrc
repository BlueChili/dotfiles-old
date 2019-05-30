set nocompatible               " Be iMproved

packadd minpac
call minpac#init()
" Add or remove your plugins here:
call minpac#add('kballard/vim-swift', {'on_ft': 'swift'})
call minpac#add('AndrewRadev/vim-eco', {'on_ft': 'eco'})
call minpac#add('digitaltoad/vim-pug', { 'on_ft': ['pug', 'jade'] })
call minpac#add('strogonoff/vim-coffee-script', { 'on_ft': 'coffee' }) "This is the syntax only version, the full one with requiring the compiler for greater good is hosted by kchmck
call minpac#add('wavded/vim-stylus', {'on_ft': ['stylus', 'styl']})
call minpac#add('Yggdroot/indentLine')
call minpac#add('morhetz/gruvbox')
call minpac#add('vim-airline/vim-airline')
call minpac#add('vim-airline/vim-airline-themes')
call minpac#add('ctrlpvim/ctrlp.vim')
call minpac#add('rizzatti/dash.vim')
call minpac#add('w0rp/ale')
" call minpac#add('lsdr/monokai')
" call minpac#add('tpope/vim-fugitive')
" call minpac#add('vim-scripts/HTML-AutoCloseTag')		"Auto closes html tags after '>'
call minpac#add('vim-scripts/tComment')							"Easily comment with 'gcc'
call minpac#add('othree/yajs.vim')                  "JavaScript syntax
" call minpac#add('othree/es.next.syntax.vim')
call minpac#add('othree/javascript-libraries-syntax.vim')                  " syntax for libraries ex. React
call minpac#add('mxw/vim-jsx')
call minpac#add('mattn/emmet-vim', {'on_ft': 'html'})
call minpac#add('cespare/vim-toml')
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-repeat')
" call minpac#add('jiangmiao/auto-pairs')
call minpac#add('mhartington/oceanic-next')
call minpac#add('mbbill/undotree')
" call minpac#add('gorodinskiy/vim-coloresque', {'on_ft': ['scss', 'sass', 'css'] } )
call minpac#add('arcticicestudio/nord-vim')
call minpac#add('igankevich/mesonic', {'type': 'opt', 'name': 'meson'})
call minpac#add('k-takata/minpac', {'type': 'opt'})

" You can specify revision/branch/tag.
" call minpac#add('Shougo/vimshell', { 'rev': '3787e5' })

set undofile
set undodir=~/.config/nvim/undo

set termguicolors
" incremental live substitute
" set inccommand=split
" Required:
filetype plugin indent on

let g:used_javascript_libs = 'react'
let g:user_emmet_leader_key='<leader>e'

" Configuration file for vim "
"
set noswapfile
" Leader key
let mapleader = ","
"
" Keymappings
map <leader>w <C-w><C-w>
nmap <leader>w <C-w><C-w>
imap <leader>w <ESC><C-w><C-w>
map <leader>s :w<CR>
nmap <leader>s :w<CR>
imap <leader>s <ESC>:w<CR>
map <leader>qa :qa<CR>
nmap <leader>qa :qa<CR>
imap <leader>qa <ESC>:qa<CR>
map <leader>qq :q<CR>
nmap <leader>qq :q<CR>
imap <leader>qq <ESC>:q<CR>
nmap <leader>tt :tabnext<CR>
imap <leader>tt <ESC>:tabnext<CR>
tnoremap <leader>tt <ESC><C-\><C-n>:tabnext<CR>
tnoremap <leader>w <C-\><C-n><C-w><C-w>
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
map <leader>gpu :Gpush<CR>
" Depredated in favor of the tComment plugin
" vmap <leader>/ :norm 0i//<ESC>
" vmap <leader>? :norm 02x<ESC>
" Plugin & Third-Party apps dependent keymappings
nnoremap <F5> :UndotreeToggle<cr>
nmap <leader>d :Dash<CR>
imap <leader>p <ESC>:CtrlP<CR>
nmap <leader>p <ESC>:CtrlP<CR>
imap <leader>fp <ESC>:CtrlPClearCache<CR>
nmap <leader>fp <ESC>:CtrlPClearCache<CR>
let g:ctrlp_map = '<leader>p'
nmap <leader><leader>v :e $MYVIMRC<CR>
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
iabbrev htpp http
iabbrev flase false
iabbrev ture true
iabbrev tuer true
iabbrev fucntion function
" DOM abreviations
iabbrev csl console.log(
iabbrev dmt document
iabbrev qs querySelector(
iabbrev qsa querySelectorAll(
iabbrev ael addEventListener(
iabbrev gebi getElementById(
iabbrev gebt getElementsByTagName(
iabbrev gebc getElementsByClassName(

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
let g:gruvbox_vert_split="aqua"
let g:gruvbox_italicize_strings=1
let g:gruvbox_contrast_light="medium"
let g:gruvbox_contrast_dark="hard"
set background=dark "setting gruvbox dark variant

" Current theme config
let g:ale_lint_delay = 500    " left here to use after battery replacement
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
let g:nord_italic = 1
let g:nord_italic_comments = 1
let g:nord_comment_brightness = 15
" colorscheme OceanicNextLight
" colorscheme nord
colorscheme gruvbox
let g:airline_powerline_fonts = 1
let g:airline_theme='nord'

"Indent guides plugin config
set list lcs=tab:\·\ 
set relativenumber
set scrolloff=1

" Automatic linting on file save
"au BufWritePost * Neomake

" let g:ctrlp_user_command = ['.git', 'git ls-files -co --exclude-standard']
" let g:ctrlp_user_command = ['.git', 'cd %s; and git ls-files -co --exclude-standard']
let g:ctrlp_user_command = ['.git .meteor', 'cd %s; and git ls-files -co --exclude-standard']
" let CtrlP know that files and paths in .gitignore should be ignored from search
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*,*/meteor/*,*/bower_components/*,*.css.map,*.js.map,*/out/*,*dist*
set wildignore+=*/public/*
let g:ctrlp_match_window='bottom'
" let g:ctrlp_match_window='bottom,order:ttb'


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
