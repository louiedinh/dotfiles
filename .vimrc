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


" Turn on highlighting search and clear on spacebar
set hlsearch
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" --------------------
" TagList
" --------------------
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

"Turn of auto-complete on .
let g:jedi#popup_on_dot = 0
