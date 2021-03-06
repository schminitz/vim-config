"Remap D to F
"------------
noremap f d

"Remap F to J
"------------
noremap j f
noremap <S-j> <S-f>
noremap <S-k> <S-j>

"Remap K to Z for Folding
"------------
noremap k z
noremap ks zj
noremap kz zk

"Open/close fold with space bar
nnoremap <space> za
vnoremap <space> za
"Fold/unfold all with H
noremap h zR
noremap <S-h> zM


"Map arrow movement
"------------------
noremap z <Up>
noremap q <Left>
noremap s <Down>
noremap d <Right>

"Map window movement
"-------------------
noremap <C-w><S-Left> <C-w><S-h>
noremap <C-w><S-Down> <C-w><S-j>
noremap <C-w><S-Up> <C-w><S-k>
noremap <C-w><S-Right> <C-w><S-l>

"Adding blank line up and down
"-----------------------------
nnoremap <silent><S-z> :set paste<CR>O<Esc>:set nopaste<CR>
nnoremap <silent><S-s> :set paste<CR>o<Esc>:set nopaste<CR>
"-----------------------------

"Adding tagbar shortcut
"-----------------------
noremap <S-t> :TagbarOpenAutoClose<CR>
noremap <F2> :TagbarToggle<CR>
"-----------------------

"Add comment mapping
"-------------------
noremap <S-c> :call EnhancedCommentify('', 'guess')<CR>
noremap <S-x> :call EnhancedCommentify('', 'comment')<CR>
"-------------------

" Open nerd tree
"-------------------
noremap <S-l> :NERDTreeFind<CR>
"-------------------

" tab navigation
"---------------
:nmap lq :tabprevious<CR>
:nmap ld :tabnext<CR>
:nmap ls :tabfirst<CR>
:nmap lz :tablast<CR>
:nmap lx :tabclose<CR>
:nmap <C-t> :tabnew<CR>
:imap <C-t> <Esc>:tabnew<CR>
"---------------

" BufExplorer
"------------
map <S-B> :BufExplorer<CR>
"------------

" Window resizing
"----------------

nnoremap + :resize 9999<bar>vertical resize 9999<CR>
nnoremap = <C-w>=

" Copy paste trough different vims (macvim)
"------------------------------------------
"set clipboard=unnamed
nmap <F2> :.w !pbcopy<CR><CR>
vmap <F2> :w !pbcopy<CR><CR>
"map <C-c> "*y<CR>
"noremap y "*y
"nnoremap yy "*yy
"noremap p "*p
"noremap P "*P

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
