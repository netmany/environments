"sytax high light
syntax on
"show the line number
set nu
"let the tabstop equal 4
set tabstop=4
"set the autoindent on
set nobackup
set softtabstop=4
set autoindent
set expandtab
"set the match time is one tenth second
set matchtime=1
"high light the search
set hlsearch
"set the c language indent format 
set cindent
"set the indent width
set shiftwidth=4
"set show status on
set ruler
"set show mode on
set showmode
set nowrap
set t_Co=256

colorscheme railscasts

set cursorline

"This is for setting Makefiles with tabs not spaces
autocmd FileType make setlocal noexpandtab

inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap < <><ESC>i
inoremap " ""<ESC>i
inoremap ' ''<ESC>i

nmap <c-h> <ESC>:vimgrep <cword> % <bar> cw <cr>
map tl :TlistToggle<cr>
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1
let Tlist_WinWidth = 80
aug QFClose
  au!
  au WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&buftype") == "quickfix"|q|endif
aug END

" to indent lisp code using gg=G or visual block selection =
autocmd bufread,bufnewfile *.ss,*.rkt,*.lisp,*.scm setlocal equalprg=lispindent.ss

