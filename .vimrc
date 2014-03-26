" Set Terminal Colors
:set  t_Co=256

" Tabbing for Python
set shiftwidth=4
set tabstop=4
set expandtab
set foldmethod=indent
syntax on

" Turn on line numbers
set nu

" Color Scheme
colors zenburn-custom

"Disable showmarks
let g:showmarks_enable=0

" remap '' to `` because it seems like '' jumps to line of last jump 
" whereas `` jumps to the last position.
map '' ``


" Turn on highlighting search and clear on spacebar
set hlsearch
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" --------------------
" TagList
" --------------------
:let &tags=globpath('~/.tags', '*')

" F4: Switch on/off TagList
nnoremap <silent> T :TlistToggle<CR>
" TagListTagName - Used for tag names
highlight MyTagListTagName gui=bold guifg=Black guibg=Orange
" TagListTagScope - Used for tag scope
highlight MyTagListTagScope gui=NONE guifg=Blue
" TagListTitle - Used for tag titles
highlight MyTagListTitle gui=bold guifg=DarkRed guibg=LightGray
" TagListComment - Used for comments
highlight MyTagListComment guifg=DarkGreen
" TagListFileName - Used for filenames
highlight MyTagListFileName gui=bold guifg=Black guibg=LightBlue
"let Tlist_Ctags_Cmd = $VIM.'/vimfiles/ctags.exe' " location of ctags tool
let Tlist_Show_One_File = 1 " Displaying tags for only one file~
let Tlist_Exit_OnlyWindow = 1 " if you are the last, kill yourself
let Tlist_Sort_Type = "order" " sort by order or name
let Tlist_Display_Prototype = 0 " do not show prototypes and not tags in the taglist window.
let Tlist_Compact_Format = 1 " Remove extra information and blank lines from the taglist window.
let Tlist_GainFocus_On_ToggleOpen = 1 " Jump to taglist window on open.
let Tlist_Display_Tag_Scope = 1 " Show tag scope next to the tag name.
let Tlist_Close_On_Select = 1 " Close the taglist window when a file or tag is selected.
let Tlist_Enable_Fold_Column = 0 " Don't Show the fold indicator column in the taglist window.
let Tlist_WinWidth = 50

" Setup a keymapping to lookup the definition of python functions
:map gD "1yiw:vsplit<CR><C-w><C-w> /def <C-R>1<CR>

" Show leader key entry
set showcmd

" Start using Pathogen
call pathogen#infect()

" Turn on filetype detection
filetype plugin indent on

"Turn off auto-complete on .
let g:jedi#popup_on_dot = 0

"=== Required flake8 to be installed. 
"$ pip install flake8.

" Configure Python checkers
" Don't warn on
"   E121 continuation line indentation is not a multiple of four
"   E128 continuation line under-indented for visual indent
"   E711 comparison to None should be 'if cond is not None:'
"   E301 expected 1 blank line, found 0
"   E261 at least two spaces before inline comment
"   E241 multiple spaces after ':'
"   E124 closing bracket does not match visual indentation
"   E126 continuation line over-indented for hanging indent
let g:syntastic_python_flake8_args='--ignore=E121,E128,E711,E301,E261,E241,E124,E126
    \ --max-line-length=200'

" Automatically switch to the open file's directory
" set autochdir

" Set textwidth. Linewrap with gq<range>
" set textwidth=79
