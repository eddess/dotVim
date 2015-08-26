" plugin management with pathogen
source ~/.vim/bundle/pathogen/autoload/pathogen.vim
execute pathogen#infect()
execute pathogen#helptags()


" === General options ===
let g:progdata="~/.programdata/vim"
if !isdirectory(expand(g:progdata))
	call mkdir(expand(g:progdata), "p")
endif

execute "set viminfo='20,\"100,:30,%,n".g:progdata."/viminfo.txt"

set nocompatible
set encoding=utf-8
setglobal fileencoding=utf-8

" syntax highlighting
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

" splits
set splitbelow
set splitright
set fillchars+=vert:\ 

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
execute "set directory=".g:progdata."/swp//"
if !isdirectory(expand(&directory))
        call mkdir(expand(&directory), "p")
endif

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

" Leader keys
set showcmd
let mapleader=","
let maplocalleader="\\"

" Searching
set incsearch
set hlsearch

set noshowmode

" Auto change working directory to current file
set autochdir

" tab list
set showtabline=0

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
	setlocal relativenumber!
endfunction

nnoremap <leader>n :call g:ToggleLineNumbers()<cr>

" GUI settings on load
if has('gui_running')
	" Window size
	set lines=48 columns=81

	" set font
	if has('mac')
		autocmd GUIEnter * set guifont=Monaco\ for\ Powerline:h12
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

" unmap c-v in normal mode on windows
if has('win32')
	nunmap <c-v>
endif

" mouse support
set mouse=a

" don't fold on open
set foldlevel=99

" low timeout for esc needs
set timeoutlen=1000 ttimeoutlen=10

" ==== Plugins ====

" powerline
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
set laststatus=2
set modelines=0

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

" colorscheme
colorscheme atom-dark

" ==== Filetype settings ====
" python
augroup python_autocmds
	autocmd!

" highlight characters past column 120
	autocmd FileType python highlight Excess ctermbg=Red
	autocmd FileType python match Excess /\%80v./
	autocmd FileType python set nowrap
	autocmd FileType python let g:pymode_rope = 0
	autocmd FileType python let g:pymode_virtualenv = 1

"Linting
	autocmd FileType python let g:pymode_lint = 0
	autocmd FileType python let g:pymode_lint_write = 0

" syntax highlighting
	autocmd FileType python let g:pymode_syntax = 1
	autocmd FileType python let g:pymode_syntax_all = 1
	autocmd FileType python let g:pymode_syntax_indent_errors = g:pymode_syntax_all
	autocmd FileType python let g:pymode_syntax_space_errors = g:pymode_syntax_all

" custom lint options
	autocmd FileType python let g:syntastic_python_checkers = ['pylint']

augroup END
