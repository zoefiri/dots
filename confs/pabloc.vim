" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:	Ron Aaron <ron@ronware.org>
" Last Change:	2003 May 02

hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "pabloc"

highlight Comment	 ctermfg=1						  guifg=#000000
highlight Constant	 ctermfg=4			   cterm=none guifg=#00ffff				  gui=none
highlight Identifier ctermfg=6						  guifg=#00c0c0
highlight Statement  ctermfg=5			   cterm=bold guifg=#c0c000				  gui=bold
highlight PreProc	 ctermfg=10						  guifg=#00ff00
highlight Type		 ctermfg=2						  guifg=#00c000
highlight Special	 ctermfg=1						  guifg=#0000ff
highlight Error					ctermbg=9							guibg=#ff0000
highlight Todo		 ctermfg=3	ctermbg=3			  guifg=#000080 guibg=#c0c000
highlight Directory  ctermfg=2						  guifg=#00c000
highlight StatusLine ctermfg=3 ctermbg=12 cterm=none guifg=#ffff00 guibg=#0000ff gui=none
highlight Normal									  guifg=#ffffff guibg=#000000
highlight Search				ctermbg=3							guibg=#c0c000
