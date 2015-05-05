set splitright
set splitbelow

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
"Tagbar open on the left
let g:tagbar_left = 1
"-------------------------

iab pdb import pdb;pdb.set_trace()

source ~/.vim/map.vim
set ignorecase

"------
" Eclim
"------
"Autocompletion
"YouCompleteMe do that
inoremap <C-@> <C-x><C-u>
"Find reference
noremap <C-g> :PythonSearch<CR>
noremap <C-h> :PythonSearch -x references<CR>
" search file
noremap <C-o> :LocateFile<CR>
"-------------------------

"---------------------
"YouCompleteMe options
"---------------------
" old <C-p> on <C-a>
inoremap <C-a> <C-x><C-n>

"let g:EclimCompletionMethod = 'omnifunc'

" Youcompleteme

" Attention j'ai changé / il faut changer:
"   call feedkeys( "\<C-X>\<C-U>\<C-P>", 'n' )
" par:
"   call feedkeys( "\<C-X>\<C-O>\<C-P>", 'n' )
" dans youcompleteme.vim
"

" let g:ycm_autoclose_preview_window_after_completion=1
" let g:ycm_add_preview_to_completeopt = 1
" let g:ycm_autoclose_preview_window_after_insertion = 1
" let g:ycm_collect_identifiers_from_comments_and_strings = 1
" 
" let g:ycm_filetype_blacklist = {
"       \ 'tagbar' : 1,
"       \ 'qf' : 1,
"       \ 'notes' : 1,
"       \ 'markdown' : 1,
"       \ 'unite' : 1,
"       \ 'text' : 1,
"       \ 'vimwiki' : 1,
"       \ 'pandoc' : 1,
"       \ 'infolog' : 1,
"       \ 'mail' : 1,
"       \ 'vim' : 1,
"       \ 'zsh' : 1,
"       \ 'sql' : 1,
"       \ 'cfg' : 1,
"       \ 'config' : 1
"       \}
