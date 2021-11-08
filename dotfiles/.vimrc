" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
syntax on

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=light
set tabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set fileformat=unix

let fortran_do_enddo=1
let fortran_free_source=1

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
filetype plugin on

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set nofoldenable " disable automatic folding of files containing # "
set showcmd		    " Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set autoindent
set hidden          " Hide buffers when they are abandoned
set mouse=a		    " Enable mouse usage (all modes) in terminals
set scrolloff=10    "cursor remains in centre of screen for scrolling
set noerrorbells
set nocompatible
set laststatus=2
set encoding=utf-8
set mousemodel="popup"
set expandtab
set tw=80
set formatoptions+=t

au Filetype fortran,sh,c,cpp,python,vim,java,make,txt,tex set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors
au Filetype fortran,sh,c,cpp,python,vim,java,make,txt,tex colorscheme sonoma " use sonoma colorscheme for these files

" command aliases for when your attempts at exiting are too speedy!
""""""""""""""""""""""""""""""""""""""""""
ca q1 q!
ca Q1 q!
ca Q q
ca Wq wq
ca WQ wq
ca W w
ca Set set
ca q!# q! 

" key mappings for window navigation
""""""""""""""""""""""""""""""""""""""""""
map `<left> <c-w>h   
map `<right> <c-w>l  
map `<up> <c-w>k     
map `<down> <c-w>j    
nmap `h <c-w>h
nmap `l <c-w>l
nmap `s ysiw
"""""""""""""""""""""""""""""""""""""""""

nmap <silent> `y :YRShow <CR>`<up>
map <F3> :w <bar> :e %:p <CR>
noremap `sc :setlocal spell <CR>
noremap `sv :setlocal nospell <CR>
" Taglist on/off
map <F5> :TlistToggle<cr>



"underline/highlight the current line in insert mode. useful to see current
"line
"hi CursorLine ctermbg=green  cterm=underline
"au InsertEnter * set cursorline
"au InsertLeave * set nocursorline

" automatically leave insert mode after 'updatetime' milliseconds of inaction
au CursorHoldI * stopinsert

" set 'updatetime' to 15 seconds when in insert mode
au InsertEnter * let updaterestore=&updatetime | set updatetime=15000
au InsertLeave * let &updatetime=updaterestore

" ensure <s-tab> is correctly mapped
exe 'set t_kB=' . nr2char(27) . '[Z'

vmap <tab> > 
vmap <s-tab> <
"""""""""""""""""""""""""""""""""""""""""""""

" accelerated scrolling
nmap j <Plug>(accelerated_jk_gj) 
nmap k <Plug>(accelerated_jk_gk)
nnoremap <c-d> <c-a>

" use the return key to open a new line below in insert mode
nmap <CR> o

" if viewing two files side by side, scrollbind (scb) allows you to scroll both
" at once
nmap ;sb :set scb!<CR>`<right>:set scb!<CR>`<left>
"""""""""""""""""""""""""""""""""""""""""

" set custom spelling higlighting
:highlight clear SpellBad
:highlight SpellBad term=standout ctermfg=2 term=underline cterm=underline
:highlight clear SpellCap
:highlight SpellCap term=underline cterm=underline
:highlight clear SpellRare
:highlight SpellRare term=underline cterm=underline
:highlight clear SpellLocal
:highlight SpellLocal term=underline cterm=underline


" to copy highlighted text to the system clipboard
vmap ;c "*y

" make external keypad work in terminal vim OSX!
map <Esc>Oq 1
map <Esc>Or 2
map <Esc>Os 3
map <Esc>Ot 4
map <Esc>Ou 5
map <Esc>Ov 6
map <Esc>Ow 7
map <Esc>Ox 8
map <Esc>Oy 9
map <Esc>Op 0
map <Esc>On .
map <Esc>OQ /
map <Esc>OR *
map <kPlus> +
map <Esc>OS -
map <Esc>OM <CR>
map! <Esc>Oq 1
map! <Esc>Or 2
map! <Esc>Os 3
map! <Esc>Ot 4
map! <Esc>Ou 5
map! <Esc>Ov 6
map! <Esc>Ow 7
map! <Esc>Ox 8
map! <Esc>Oy 9
map! <Esc>Op 0
map! <Esc>On .
map! <Esc>OQ /
map! <Esc>OR *
map! <kPlus> +
map! <Esc>OS -
map! <Esc>OM <CR>

let mapleader = "`"

" use rainbow colouring of nested brackets
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle

" set filetypes that are sometimes missed
au BufNewFile,BufRead *.py set ft=python
au BufNewFile,BufRead *.tex set ft=tex
au BufNewFile,BufRead *.pf set ft=fortran

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
