" VIM Configuration File
" http://gergap.wordpress.com/2009/05/29/minimal-vimrc-for-cc-developers/


set enc=utf-8
set fenc=utf-8
set termencoding=utf-8 

" not compatible with vi
set nocompatible
set backspace=2

set smartindent

set tabstop=4
set shiftwidth=4
set expandtab

set textwidth=120

syntax enable
filetype plugin on

" Search down subfolders
" Prvovides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu 

command MakeTags !ctags -R .
command MakeGoTags !gotags -R . > ./tags
"Ctrl X Ctrl F - to find files

let g:netrw_banner=0         " disalbe annoying banner
let g:netrw_browse_split=4   " open in prior window
let g:netrw_altv=1           " open splits to the right
let g:netrw_liststyle=3      " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|s\s\)\zs\.\S\+'

" - :edit a folder to open a file browser
" - :<CR>/v/t to open in a h-split/v-split/tab
" - check |netrw-browse-maps| for more mappings

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

noremap <C-z> :tabnew<CR>
inoremap <C-z> <C-O>:tabnew<CR>
cnoremap <C-z> <C-C>:tabnew<CR>
onoremap <C-z> <C-C>:tabnew<CR>



" TODO windows version
let Explorer = "thunar ".expand('%:p:h')."&"




" Ctrl+d to open command prompt at current working directory
noremap <C-d> :call system("gnome-terminal --working-directory=".expand('%:p:h'))<CR>
inoremap <C-d> <C-O>:call system("gnome-terminal --working-directory=".expand('%:p:h'))<CR>
cnoremap <C-d> <C-C>:call system("gnome-terminal --working-directory=".expand('%:p:h'))<CR>
onoremap <C-d> <C-C>:call system("gnome-terminal --working-directory=".expand('%:p:h'))<CR>


let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 50
