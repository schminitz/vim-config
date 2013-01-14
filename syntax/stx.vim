" Vim syntax file
" Language:	Zope StructuredText Format
" Maintainer:	Joel Burton <joel@joelburton.com>
" Last Change:	2002 Aug 08

" Remove any old syntax stuff hanging around (this is suppressed
" automatically by ":syn include" if necessary).
" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" STX commands
syn match stxListItem    "^\s*\*"
syn match stxHeading     "^\(\s*\)\S.*\n\{2,}\1\s\s*"me=e-7
syn match stxHTMLTag     "<\S[^>]*>"
syn match stxLink        "http://\S\+"
syn match stxWikiBreak    "<hr><b>\S\+, 2002.*:</b><br>"
syn match stxComment     "Wiki-Safetybelt: .*"

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_stx_syntax_inits")
  if version < 508
    let did_stx_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink stxWikiBreak           Underlined
  HiLink stxLink                Keyword
  HiLink stxHTMLTag             Statement
  HiLink stxHeading             Macro
  HiLink stxListItem            Comment
  HiLink stxComment             Comment

  delcommand HiLink
endif

let b:current_syntax = "stx"

" vim: ts=8
