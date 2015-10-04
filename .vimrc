
" always good
set nocompatible

" ft specific plugins
filetype indent plugin on

" syntax highlighting
syntax on

" avoid swap files
set noswapfile

" good for multiple files
set hidden

" command-line completion
set wildmenu

" show partial commands in last line of screen
set showcmd

set hlsearch

" keep the same indentation for unrecognized files
set autoindent

" status bar
set ruler

" always display status line
set laststatus=2

" fast tty
set ttyfast

" visual bell instead of hardware beep
set visualbell
" and do nothing
set t_vb=

" limit command window to 1 (was 2) lines
set cmdheight=1

" start out with relative numbers
set relativenumber

" toggle line numbers hotkey
function! NumberToggle()
	if(&relativenumber == 1)
		set number
	else
		set relativenumber
	endif
endfunc
nnoremap <C-n> :call NumberToggle()<cr>

" setting based on focus
au FocusLost * :set number
au FocusGained * :set relativenumber

" set automatically based on insert/command mode
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

" quickly time out on keycodes, but not on mapping
set notimeout ttimeout ttimeoutlen=200

" defaults
set tabstop=8
set shiftwidth=8
set softtabstop=8
set noexpandtab

" column
set colorcolumn=72

" allow dot to be used in visual
vnoremap . :norm.<CR>
