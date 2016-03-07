set nocompatible
call pathogen#infect()

filetype indent on
syntax enable

if !exists('g:settings')
	echom 'The g:settings variable must be defined'
	finish
endif

let s:settings = {}
let s:settings.default_indent = 2
let s:settings.max_column = 120
let s:settings.encoding = 'utf-8'
let s:settings.colorscheme = 'molokai'
let s:settings.javascript_libs = ''

for key in keys(s:settings)
	if has_key(g:settings, key)
		let s:settings[key] = g:settings[key]
	endif
endfor

" base configuration {{{

  set shortmess=I         " disable splash screen
  set mouse=a             " allow mouse interaction
  set mousehide           " hide mouse when you typing
  set nowrap              " dont wrap long lines
  set cursorline
  let &encoding=s:settings.encoding      " set display encoding
  set number              " show line numbers
  set showcmd
  set ttyfast             " enable fast rendering
  set switchbuf=useopen   " dont duplicate an existing buffer
  set history=1000

  " whitespace
  let &tabstop=s:settings.default_indent     " number of spaces per tab for display
  let &softtabstop=s:settings.default_indent " number of spaces per tab in insert mode
  let &shiftwidth=s:settings.default_indent  " number of spaces when indenting
  set expandtab           " spaces instead of tabs
  set autoindent          " automatically indent to match adjacent lines
  set smartindent         " use shiftwidth to enter tabs
  set ai                  " set auto-indenting

  set wildmenu            " autocomplete vim commands
  set wildignorecase      "
  set linebreak
  set backspace=indent,eol,start  " make backspace behave in a sane manner
  set undodir=$HOME/.vim/undir  " allows for persistent undos even after file has been closed
  set undofile
  set backupcopy=yes      " overwrite file on save, ensure changes are picked up by watchers
  set formatoptions+=roc    " automatically complete comments

"}}}

set path=$PWD/**
let g:used_javascript_libs = s:settings.javascript_libs
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let mapleader=","


" statusline {{{

  set statusline+=%#warningmsg#
  set statusline+=%{fugitive#head()}
  set statusline+=%*

" }}}

" mapping {{{

  map <F3> :ls
  map <F2> :NERDTreeToggle<CR>

" }}}


" remove whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

colorscheme molokai
