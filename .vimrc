" VIM Configuration File
" http://gergap.wordpress.com/2009/05/29/minimal-vimrc-for-cc-developers/


set enc=utf-8
set fenc=utf-8
set termencoding=utf-8 

set nocompatible
set backspace=2

set smartindent

set tabstop=4
set shiftwidth=4
set expandtab

set textwidth=120


"let astronaut_bold=1      : use the bold modifier for term, cterm, and gui

"let astronaut_dark=1      : dark colors used (otherwise some terminals make everything bold, which can be all one color)

"let astronaut_underline=1 

colorscheme torte

"set t_Co=256
"syntax on

set number
set showmatch
set comments=sl:/*:\ *,elx:\ */://


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Firefox-style tabbing
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <C-Tab> :tabnext<CR>
inoremap <C-Tab> <C-O>:tabnext<CR>
cnoremap <C-Tab> <C-C>:tabnext<CR>
onoremap <C-Tab> <C-C>:tabnext<CR>

noremap <C-S-Tab> :tabprev<CR>
inoremap <C-S-Tab> <C-O>:tabprev<CR>
cnoremap <C-S-Tab> <C-C>:tabprev<CR>
onoremap <C-S-Tab> <C-C>:tabprev<CR>

noremap <C-t> :tabnew<CR>
inoremap <C-t> <C-O>:tabnew<CR>
cnoremap <C-t> <C-C>:tabnew<CR>
onoremap <C-t> <C-C>:tabnew<CR>



" TODO windows version
let Explorer = "thunar ".expand('%:p:h')."&"




" Ctrl+d to open command prompt at current working directory
noremap <C-d> :call system("gnome-terminal --working-directory=".expand('%:p:h'))<CR>
inoremap <C-d> <C-O>:call system("gnome-terminal --working-directory=".expand('%:p:h'))<CR>
cnoremap <C-d> <C-C>:call system("gnome-terminal --working-directory=".expand('%:p:h'))<CR>
onoremap <C-d> <C-C>:call system("gnome-terminal --working-directory=".expand('%:p:h'))<CR>


let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 50
map <F4> :TlistToggle<cr>


map <F6> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

