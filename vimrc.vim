"Add mapping file
"----------------
so $HOME/.vim/map.vim
so $HOME/.vim/tabline.vim
"----------------

"Add indent files
"----------------
so $HOME/.vim/indent/python.vim
"----------------

"Add filetype file
"-----------------
filetype on
so $HOME/.vim/filetype.vim
"-----------------

"------------
" Pathogen load
" -------------
filetype off

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on

" -------------
"Configure tagbar
"-------------------------
"See tagbar.vim, I alredy modified it
let g:tagbar_width = 45
"Let show help bottom line
let g:tagbar_compact = 0
"Auto focus when opened
let g:tagbar_autofocus = 1
"Sort by order not by name
let g:tagbar_sort = 0
"-------------------------

"Activate color syntax
"---------------------
syntax enable
"---------------------

"Activate solarized color
"------------------------
"Make transparency of terminal works
let g:solarized_termtrans = 1
set background=dark
set t_Co=16
let g:solarized_termcolors=16
colorscheme solarized
"------------------------

"Some random configurations
"--------------------------
"Show line number on the left
set nu
"Ignore case while searching
set ignorecase
"Show status line
set laststatus=2
"Keep lines of command line history
set history=200
"Backspace dont work without that
set backspace=2
"Activate pylint
autocmd FileType python compiler pylint
"I want my split to go to the right and bot
set splitright
set splitbelow
"I want to jump to line with zqsd
set whichwrap=<,>
"Number of space for tab
set tabstop=4
"Number of space for <  >
set shiftwidth=4
"I want spaces not tabs
set expandtab
"How many columns tab in insert mode
set softtabstop=4
"Nice autoindenting
set smartindent
"Working directory to current file
set autochdir
"Show line number on status
set ruler

"python-mode is doing this
"Show lines wrapped when reach right of the screen
"set wrap
"Dont show lines wrapped when reach right of the screen
"set nowrap

"Vim yank into mac clipboard too
"set clipboard=unnamed

"--------------------------

"NERD tree setting
"-----------------
let g:NERDTreeMapQuit = "x"
let g:NERDTreeMapToggle = "L"
let g:NERDTreeMapCloseChildren = ""
let g:NERDTreeMapCloseDir = ""
let g:NERDTreeMapHelp = "h"
let g:NERDTreeMapOpenVSplit = "v"
let g:NERDTreeMapOpenSplit = "c"
let g:NERDTreeMapChdir = ""
let g:NERDTreeMapToggleZoom = "w"
"-----------------

" Highlight search
" ----------------
set hlsearch
" ----------------
"Abreviations
"------------
iab pdb import pdb;pdb.set_trace()
iab pdbe <CR>try:<CR><BS>except Exception, e:<CR>e = e<CR>import pdb<CR>pdb.set_trace()
iab itrans <span i18n:translate="">

"Highlight trailing whitespace and tabs
" (Need to be load after pathogen and so python-mode)
"--------------------------------------
highlight ExtraWhitespace ctermbg=4 guibg=4
match ExtraWhitespace /\s\+$\|\ze\t/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$\|\ze\t/
au InsertLeave * match ExtraWhitespace /\s\+$\|\ze\t/
"--------------------------------------

" Allow undo even when closed file (persistant undo)
" --------------------------------------------------
set undofile
set undodir=~/.vim/undofiles
" --------------------------------------------------

" Do not save .swp files in current dir (used for dropbox)
" --------------------------------------------------------
set dir=~/tmp,/var/tmp,/tmp
" --------------------------------------------------------

" Configure python-mode
" =====================
let g:pymode_rope = 0

" FOLLOWING COMMENTED CAUSE OF python-mode BUNDLE DOING THIS
" ==========================================================

"Deactivate autoload of Pylint
"-----------------------------
"let g:pylint_onwrite = 0
"-----------------------------

"Activate autload of pyflakes on python file save
"------------------------------------------------
"https://github.com/nvie/vim-pyflakes
"autocmd BufWritePost *.py call Pyflakes()
"------------------------------------------------

"Folding
"-------
""setlocal foldmethod=indent
"setlocal foldmethod=syntax
"set foldnestmax=2
"-------

" Hiding message mode and some other stuff like when typing '^p'
" --------------------------------------------------------------
"set noshowmode
