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


"Map arrow movement
"------------------
noremap z <Up>
noremap q <Left>
noremap s <Down>
noremap d <Right>

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

" Copy paste trough different vims
"---------------------------------
":noremap y "*y
":nnoremap yy "*yy
":noremap p "*p
":noremap P "*P
