function! LoadFileTemplate()
  silent! 0r ~/.vim/templates/%:e.tpl
  syn match vimTemplateMarker "<+.++>" containedin=ALL
  hi vimTemplateMarker guifg=#67a42c guibg=#112300 gui=bold
endfunction

autocmd BufNewFile * :call LoadFileTemplate()
nnoremap <c-j> /<+.\{-1,}+><cr>c/+>/e<cr>
inoremap <c-j> <ESC>/<+.\{-1,}+><cr>c/+>/e<cr>


highlight ExtraWhitespace term=reverse cterm=reverse ctermfg=240 ctermbg=230
autocmd ColorScheme * highlight ExtraWhitespace term=reverse cterm=reverse ctermfg=240 ctermbg=230
autocmd BufWinEnter * match ExtraWhitespace /\s\+$\|\t/
" the above flashes annoyingly while typing, be calmer in insert mode
autocmd InsertLeave * match ExtraWhitespace /\s\+$\|\t/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$\|\t/

function! s:FixWhitespace(line1,line2)
    let l:save_cursor = getpos(".")
    silent! execute ':' . a:line1 . ',' . a:line2 . 's/\s\+$//'
    call setpos('.', l:save_cursor)
endfunction

" Run :FixWhitespace to remove end of line white space.
command! -range=% FixWhitespace call <SID>FixWhitespace(<line1>,<line2>)
