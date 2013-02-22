"Example to add some filetype detection:
"au BufRead *.pt set syn=html ft=html

au BufRead *.txt set syn=text

augroup filetypedetect
au BufNewFile,BufRead *.txt call s:FTrobot()

func! s:FTrobot()
	let b:topl = getline(1)
	if (exists("g:robot_syntax_for_txt") && g:robot_syntax_for_txt)
	\ || b:topl =~ '\c^\(\*\{1,3}\)\s*.\{-}\s*\1$'
	\ || b:topl =~ '^# -\*- coding: robot -\*-$'
		setf robot
	else
		setf human
	endif
endfunc
augroup END

au BufRead *.pp set syn=puppet ft=puppet
au BufRead *.pt set syn=html ft=html
au BufRead *.zcml set syn=xml ft=xml
au BufRead ~/.tmp/mutt* set tw=72
au BufRead /tmp/cadaver* set syn=html ft=html
au BufRead *.dtml set syn=html ft=html
au BufRead *.zpt set syn=html ft=html
au BufRead *.prop set syn=cfg ft=cfg
au BufRead *.form set syn=cfg ft=cfg
au BufRead *.pp set syn=puppet ft=puppet

au BufRead ~/.remind/reminders set syn=remind

augroup filetypedetect
au BufNewFile,BufRead *.stx setf stx
augroup END
