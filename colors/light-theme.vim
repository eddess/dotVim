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

highlight Normal guifg=Black guibg=White

" Groups used in the 'highlight' and 'guicursor' options default value.
highlight Normal           ctermbg=231  ctermfg=234  guibg=#ffffff guifg=#1c1c1c cterm=NONE           gui=NONE

highlight Comment          ctermbg=NONE ctermfg=244  guibg=NONE    guifg=#808080 cterm=NONE           gui=NONE
highlight Constant         ctermbg=NONE ctermfg=208  guibg=NONE    guifg=#ff8700 cterm=NONE           gui=NONE
highlight Error            ctermbg=160  ctermfg=255  guibg=#d70000 guifg=#ffffff cterm=bold           gui=bold
highlight Identifier       ctermbg=NONE ctermfg=20   guibg=NONE    guifg=#0000d7 cterm=NONE           gui=NONE
highlight Ignore           ctermbg=NONE ctermfg=NONE guibg=NONE    guifg=NONE    cterm=NONE           gui=NONE
highlight PreProc          ctermbg=NONE ctermfg=30   guibg=NONE    guifg=#008787 cterm=NONE           gui=NONE
highlight Special          ctermbg=NONE ctermfg=35   guibg=NONE    guifg=#00af5f cterm=NONE           gui=NONE
highlight Statement        ctermbg=NONE ctermfg=69   guibg=NONE    guifg=#5f87ff cterm=NONE           gui=NONE
highlight String           ctermbg=NONE ctermfg=24   guibg=NONE    guifg=#005f87 cterm=NONE           gui=NONE
highlight Todo             ctermbg=228  ctermfg=234  guibg=#ffff87 guifg=#1c1c1c cterm=bold           gui=bold
highlight Type             ctermbg=NONE ctermfg=90   guibg=NONE    guifg=#870087 cterm=NONE           gui=NONE
highlight Underlined       ctermbg=NONE ctermfg=39   guibg=NONE    guifg=#00afff cterm=underline      gui=underline

highlight LineNr           ctermbg=251  ctermfg=234  guibg=#c6c6c6 guifg=#1c1c1c cterm=NONE           gui=NONE
highlight NonText          ctermbg=NONE ctermfg=244  guibg=NONE    guifg=#808080 cterm=NONE           gui=NONE

highlight ErrorMsg         ctermbg=217  ctermfg=235  guibg=#ffafaf guifg=#262626 cterm=NONE           gui=NONE
highlight ModeMsg          ctermbg=157  ctermfg=235  guibg=#afffaf guifg=#262626 cterm=NONE           gui=NONE
highlight MoreMsg          ctermbg=NONE ctermfg=36   guibg=NONE    guifg=#00af87 cterm=NONE           gui=NONE
highlight Question         ctermbg=NONE ctermfg=124  guibg=NONE    guifg=#af0000 cterm=NONE           gui=NONE
highlight WarningMsg       ctermbg=NONE ctermfg=160  guibg=NONE    guifg=#d70000 cterm=NONE           gui=NONE

highlight Pmenu            ctermbg=251  ctermfg=235  guibg=#c6c6c6 guifg=#262626 cterm=NONE           gui=NONE
highlight PmenuSbar        ctermbg=244  ctermfg=NONE guibg=#808080 guifg=NONE    cterm=NONE           gui=NONE
highlight PmenuSel         ctermbg=195  ctermfg=235  guibg=#d7ffff guifg=#262626 cterm=NONE           gui=NONE
highlight PmenuThumb       ctermbg=66   ctermfg=87   guibg=#5f8787 guifg=#5fffff cterm=NONE           gui=NONE

highlight Cursor           ctermbg=250  ctermfg=NONE guibg=#bcbcbc guifg=NONE    cterm=NONE           gui=NONE
highlight CursorColumn     ctermbg=254  ctermfg=NONE guibg=#e4e4e4 guifg=NONE    cterm=NONE           gui=NONE
highlight CursorLine       ctermbg=NONE ctermfg=NONE guibg=NONE    guifg=NONE    cterm=underline      gui=underline
highlight CursorLineNr     ctermbg=254  ctermfg=73   guibg=#e4e4e4 guifg=#5fafaf cterm=NONE           gui=NONE

highlight TabLineSel       ctermbg=153  ctermfg=238  guibg=#afd7ff guifg=#444444 cterm=NONE           gui=NONE
highlight TabLineFill      ctermbg=254  ctermfg=254  guibg=#e4e4e4 guifg=#e4e4e4 cterm=NONE           gui=NONE
highlight TabLine          ctermbg=231  ctermfg=153  guibg=#ffffff guifg=#afd7ff cterm=NONE           gui=NONE
highlight TabNumSel        ctermbg=1    ctermfg=231  guibg=#af0000 guifg=#ffffff cterm=bold           gui=bold
highlight TabNum           ctermbg=254  ctermfg=1    guibg=#e4e4e4 guifg=#d70000 cterm=NONE           gui=NONE

highlight WinNumSel        ctermbg=153  ctermfg=160  guibg=#afd7ff guifg=#d70000 cterm=bold           gui=bold
highlight WinNum           ctermbg=231  ctermfg=153  guibg=#ffffff guifg=#afd7ff cterm=NONE           gui=NONE

highlight StatusLine       ctermbg=NONE ctermfg=NONE guibg=NONE    guifg=NONE    cterm=inverse        gui=inverse
highlight StatusLineNC     ctermbg=NONE ctermfg=NONE guibg=NONE    guifg=NONE    cterm=NONE           gui=NONE

highlight helpLeadBlank    ctermbg=NONE ctermfg=NONE guibg=NONE    guifg=NONE    cterm=NONE           gui=NONE
highlight helpNormal       ctermbg=NONE ctermfg=NONE guibg=NONE    guifg=NONE    cterm=NONE           gui=NONE

highlight Visual           ctermbg=111  ctermfg=235  guibg=#87afff guifg=#262626 cterm=NONE           gui=NONE
highlight VisualNOS        ctermbg=NONE ctermfg=NONE guibg=NONE    guifg=NONE    cterm=underline      gui=underline

highlight FoldColumn       ctermbg=251  ctermfg=235  guibg=#c6c6c6 guifg=#262626 cterm=NONE           gui=NONE
highlight Folded           ctermbg=251  ctermfg=235  guibg=#c6c6c6 guifg=#262626 cterm=NONE           gui=NONE

highlight VertSplit        ctermbg=238  ctermfg=238  guibg=#444444 guifg=#444444 cterm=NONE           gui=NONE
highlight WildMenu         ctermbg=111  ctermfg=235  guibg=#87afff guifg=#262626 cterm=NONE           gui=NONE

highlight Function         ctermbg=NONE ctermfg=33   guibg=NONE    guifg=#0087ff cterm=NONE           gui=NONE
highlight SpecialKey       ctermbg=NONE ctermfg=244  guibg=NONE    guifg=#808080 cterm=NONE           gui=NONE
highlight Title            ctermbg=NONE ctermfg=22   guibg=NONE    guifg=#005f00 cterm=NONE           gui=NONE

highlight DiffAdd          ctermbg=157  ctermfg=235  guibg=#afffaf guifg=#262626 cterm=NONE           gui=NONE
highlight DiffChange       ctermbg=189  ctermfg=235  guibg=#d7d7ff guifg=#262626 cterm=NONE           gui=NONE
highlight DiffDelete       ctermbg=217  ctermfg=235  guibg=#ffafaf guifg=#262626 cterm=NONE           gui=NONE
highlight DiffText         ctermbg=147  ctermfg=235  guibg=#afafff guifg=#262626 cterm=NONE           gui=NONE

highlight IncSearch        ctermbg=217  ctermfg=235  guibg=#ffafaf guifg=#262626 cterm=NONE           gui=NONE
highlight Search           ctermbg=229  ctermfg=235  guibg=#ffffaf guifg=#262626 cterm=NONE           gui=NONE

highlight Directory        ctermbg=NONE ctermfg=73   guibg=NONE    guifg=#5fafaf cterm=NONE           gui=NONE
highlight MatchParen       ctermbg=NONE ctermfg=166  guibg=NONE    guifg=#d75f00 cterm=NONE           gui=NONE

highlight SpellBad         ctermbg=NONE ctermfg=160  guibg=NONE    guifg=NONE    cterm=undercurl      gui=undercurl guisp=#cc2929
highlight SpellCap         ctermbg=NONE ctermfg=73   guibg=NONE    guifg=NONE    cterm=undercurl      gui=undercurl guisp=#5fafaf
highlight SpellLocal       ctermbg=NONE ctermfg=35   guibg=NONE    guifg=NONE    cterm=undercurl      gui=undercurl guisp=#34b31b
highlight SpellRare        ctermbg=NONE ctermfg=208  guibg=NONE    guifg=NONE    cterm=undercurl      gui=undercurl guisp=#ff8700

highlight ColorColumn      ctermbg=254  ctermfg=NONE guibg=#e4e4e4 guifg=NONE    cterm=NONE           gui=NONE
highlight signColumn       ctermbg=251  ctermfg=235  guibg=#c6c6c6 guifg=#262626 cterm=NONE           gui=NONE

" Some specials (override highlight links) 

