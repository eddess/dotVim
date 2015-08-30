" Emacs theme file.
" Eddy Essien
" 
" A light color theme that will be matched as closely as possible to what I use on all my editors

" First remove all existing highlighting

set background=light
highlight clear
if exists("syntax_on")
	syntax reset
endif

let colors_name = "light-theme"

" Groups used in the 'highlight' and 'guicursor' options default value.
highlight Normal           ctermbg=231  ctermfg=0    cterm=NONE           

highlight Comment          ctermbg=NONE ctermfg=244  cterm=NONE           
highlight Constant         ctermbg=NONE ctermfg=3    cterm=NONE           
highlight Error            ctermbg=NONE ctermfg=196  cterm=bold           
highlight Identifier       ctermbg=NONE ctermfg=20   cterm=NONE           
highlight Ignore           ctermbg=NONE ctermfg=NONE cterm=NONE           
highlight PreProc          ctermbg=NONE ctermfg=6    cterm=NONE           
highlight Special          ctermbg=NONE ctermfg=6    cterm=NONE           
highlight Statement        ctermbg=NONE ctermfg=9    cterm=BOLD           
highlight String           ctermbg=NONE ctermfg=3    cterm=NONE           
highlight Todo             ctermbg=228  ctermfg=NONE cterm=bold           
highlight Type             ctermbg=NONE ctermfg=4    cterm=NONE           
highlight Underlined       ctermbg=NONE ctermfg=39  cterm=underline      

highlight LineNr           ctermbg=251  ctermfg=NONE    cterm=NONE           
highlight NonText          ctermbg=NONE ctermfg=244     cterm=NONE           

highlight ErrorMsg         ctermbg=217  ctermfg=235  cterm=NONE           
highlight ModeMsg          ctermbg=NONE ctermfg=6    cterm=NONE           
highlight MoreMsg          ctermbg=NONE ctermfg=6    cterm=NONE           
highlight Question         ctermbg=NONE ctermfg=124     cterm=NONE           
highlight WarningMsg       ctermbg=NONE ctermfg=160     cterm=NONE           
highlight Excess           ctermbg=196  ctermfg=0    cterm=NONE

highlight Pmenu            ctermbg=251  ctermfg=235  cterm=NONE           
highlight PmenuSbar        ctermbg=244  ctermfg=NONE    cterm=NONE           
highlight PmenuSel         ctermbg=195  ctermfg=235  cterm=NONE           
highlight PmenuThumb       ctermbg=66   ctermfg=87   cterm=NONE           

highlight Cursor           ctermbg=250  ctermfg=NONE    cterm=NONE           
highlight CursorColumn     ctermbg=254  ctermfg=NONE    cterm=NONE           
highlight CursorLine       ctermbg=NONE ctermfg=NONE       cterm=underline      
highlight CursorLineNr     ctermbg=254  ctermfg=73   cterm=NONE           

highlight TabLineSel       ctermbg=153  ctermfg=238  cterm=NONE           
highlight TabLineFill      ctermbg=254  ctermfg=254  cterm=NONE           
highlight TabLine          ctermbg=231  ctermfg=153  cterm=NONE           
highlight TabNumSel        ctermbg=1    ctermfg=231  cterm=bold           
highlight TabNum           ctermbg=254  ctermfg=1    cterm=NONE           

highlight WinNumSel        ctermbg=153  ctermfg=160  cterm=bold           
highlight WinNum           ctermbg=231  ctermfg=153  cterm=NONE           

highlight StatusLine       ctermbg=251  ctermfg=0    cterm=NONE        
highlight StatusLineNC     ctermbg=254 ctermfg=251   cterm=NONE           

highlight helpLeadBlank    ctermbg=NONE ctermfg=NONE       cterm=NONE           
highlight helpNormal       ctermbg=NONE ctermfg=NONE       cterm=NONE           

highlight Visual           ctermbg=111  ctermfg=235  cterm=NONE           
highlight VisualNOS        ctermbg=NONE ctermfg=NONE       cterm=underline      

highlight FoldColumn       ctermbg=251  ctermfg=235  cterm=NONE           
highlight Folded           ctermbg=251  ctermfg=235  cterm=NONE           

highlight VertSplit        ctermbg=238  ctermfg=238  cterm=NONE           
highlight WildMenu         ctermbg=111  ctermfg=235  cterm=NONE           

highlight Function         ctermbg=NONE ctermfg=2      cterm=NONE           
highlight SpecialKey       ctermbg=NONE ctermfg=244     cterm=NONE           
highlight Title            ctermbg=NONE ctermfg=22      cterm=NONE           

highlight DiffAdd          ctermbg=157  ctermfg=235  cterm=NONE           
highlight DiffChange       ctermbg=189  ctermfg=235  cterm=NONE           
highlight DiffDelete       ctermbg=217  ctermfg=235  cterm=NONE           
highlight DiffText         ctermbg=147  ctermfg=235  cterm=NONE           

highlight IncSearch        ctermbg=217  ctermfg=235  cterm=NONE           
highlight Search           ctermbg=229  ctermfg=235  cterm=NONE           

highlight Directory        ctermbg=NONE ctermfg=5      cterm=NONE           
highlight MatchParen       ctermbg=NONE ctermfg=166     cterm=NONE           

highlight SpellBad         ctermbg=NONE ctermfg=160        cterm=undercurl      
highlight SpellCap         ctermbg=NONE ctermfg=73         cterm=undercurl      
highlight SpellLocal       ctermbg=NONE ctermfg=35         cterm=undercurl      
highlight SpellRare        ctermbg=NONE ctermfg=208        cterm=undercurl      

highlight ColorColumn      ctermbg=254  ctermfg=NONE    cterm=NONE           
highlight signColumn       ctermbg=251  ctermfg=235  cterm=NONE           

" Some specials (override highlight links) 

