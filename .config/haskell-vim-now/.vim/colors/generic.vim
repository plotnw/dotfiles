set background=dark
highlight clear
if exists("syntax on")
	syntax reset
endif
let g:colors_name="generic"
hi Normal guifg=#5588a0 guibg=#000000
hi Comment guifg=#477ba0 guibg=NONE
hi Constant guifg=#8cc061 guibg=NONE
hi String guifg=#45c8b4 guibg=NONE
hi htmlTagName guifg=#4280c8 guibg=NONE
hi Identifier guifg=#96bf96 guibg=NONE
hi Statement guifg=#6dc891 guibg=NONE
hi PreProc guifg=#e3fbb7 guibg=NONE
hi Type guifg=#cef0a8 guibg=NONE
hi Function guifg=#2e63a0 guibg=NONE
hi Repeat guifg=#6fa09b guibg=NONE
hi Operator guifg=#b1d69d guibg=NONE
hi Error guibg=#ff0000 guifg=#ffffff
hi TODO guibg=#0011ff guifg=#ffffff
hi link character	constant
hi link number	constant
hi link boolean	constant
hi link Float		Number
hi link Conditional	Repeat
hi link Label		Statement
hi link Keyword	Statement
hi link Exception	Statement
hi link Include	PreProc
hi link Define	PreProc
hi link Macro		PreProc
hi link PreCondit	PreProc
hi link StorageClass	Type
hi link Structure	Type
hi link Typedef	Type
hi link htmlTag	Special
hi link Tag		Special
hi link SpecialChar	Special
hi link Delimiter	Special
hi link SpecialComment Special
hi link Debug		Special