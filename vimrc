set nocompatible

if has('win32')
	" Windows settings
	source $VIMRUNTIME/mswin.vim
endif

if has ('win32')
	let g:progdata="~/../ProgramData/vim"
else
	let g:progdata="~/ProgramData/vim"
endif
	
" Leader keys
set showcmd
let mapleader=","
let maplocalleader="\\"

" custom runtime path
set runtimepath+=,~/.vim

" viminfo
execute "set viminfo='20,\"100,:30,%,n".g:progdata."/viminfo.txt"

set encoding=utf-8
setglobal fileencoding=utf-8
set modelines=0
set laststatus=2


" Turn on filetype based indentation rules
filetype plugin indent on
syntax on

" don't ofload buffers right away
set hidden
set autowrite
set autoread

" quick scrolling
set ttyfast
set lazyredraw

" history size
set history=1000

" match time
set matchtime=3

" split location
set splitbelow
set splitright

" spellchecking
execute "set dictionary=".g:progdata."/canadian-words.txt"
execute "set spellfile=".g:progdata."/personal-words.utf-8.add"

" Don't highlight past this line
set synmaxcol=1000

" persistent undo
set undofile
set undoreload=5000
execute "set undodir=".g:progdata."/undo//"
if !isdirectory(expand(&undodir))
	call mkdir(expand(&undodir), "p")
endif

" No toolbar
set guioptions-=T

" swap and backup settings
set noswapfile " it's 2013 lol (excuse people use online)
set backup 
execute "set backupdir=".g:progdata."/backups//"
if !isdirectory(expand(&backupdir))
	call mkdir(expand(&backupdir), "p")
endif
set writebackup

" better completion
set complete=.,w,b,u,t
set completeopt=longest,menuone,preview

" Disable spash window
set shortmess+=I

" Indentation
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set autoindent
set shiftround
set preserveindent
set copyindent
set noexpandtab

" Color scheme
set background=dark
colorscheme molokai

" Searching
set incsearch
set hlsearch

"Pathogen
execute pathogen#infect()

" Powerline
let g:Powerline_symbols="fancy"
set noshowmode

" Auto change working directory to current file
set autochdir

" Always show tab list
set showtabline=2

" Format Tab titles
set guitablabel=%N.\ %t\ %M

" resize splits when window is resized
autocmd VimResized * :wincmd =

" wildmenu completion
set wildmenu
set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.DS_Store                       " OSX bullshit
set wildignore+=*.luac                           " Lua byte code
set wildignore+=migrations                       " Django migrations
set wildignore+=*.pyc                            " Python byte code
set wildignore+=*.orig                           " Merge resolution files
set wildignore+=*.elc                            " Compiled lisp

" Return to last edited line in file
function! RestoreCursor()
  	if line("'\"") <= line("$")
    	normal! g`"
    	return 1
  	endif
endfunction

augroup restoreCursor
	autocmd!
	autocmd bufreadpost * call RestoreCursor()
augroup END

" Highlight VCS conflict markers
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" Line numbering toggle functionality
function g:ToggleLineNumbers()
	setlocal number!
	setlocal relativenumber!
endfunction

nnoremap <leader>n :call g:ToggleLineNumbers()<cr>

" these are done when the GUI loads
if has('gui_running')
	" Window size
	set lines=48 columns=81

	" set font
	if has('mac')
		autocmd GUIEnter * set guifont=Monaco:h12
	elseif has('win32')
		autocmd GUIEnter * set guifont=Consolas_for_Powerline_FixedD:h10:cANSI
	endif

	" I hate sounds!
	autocmd GUIEnter * set visualbell t_vb=

	" hide tilde lines at end of file
	highlight NonText guifg=bg gui=NONE
endif

" clear the last search
nnoremap <silent> c/ :let @/=""<cr>

" wrapping options
set nowrap
set linebreak
set list
set listchars=tab:▸\ ,extends:>,precedes:\<
" textwidth
set textwidth=80
set colorcolumn=+1

" unmap c-v in normal mode on windows
if has('win32')
	nunmap <c-v>
endif

" mouse support
set mouse=a
