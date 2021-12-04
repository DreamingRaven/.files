"BASIC UNIVERSAL SETTINGS
set encoding=UTF-8

"tab and shiftwidth defaults
set expandtab
set tabstop=4
set shiftwidth=4

"deal with the lefthand columns
set number
highlight clear SignColumn

"line length marker https://www.youtube.com/watch?v=aHm36-na4-4
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

"Deal with invisibles :help listchars
set list
"set nolist
set listchars=tab:>\ ,eol:¬

"------------------------------------------------------------------------------
"Vim Plug reminder:
"Install vim plug itself
"Open this config in neovim
":source ~/.config/nvim/init.vim
":PlugInstall
call plug#begin('~/.vim/plugged')

"tab and shiftwidth automation
Plug 'tpope/vim-sleuth'
Plug 'editorconfig/editorconfig-vim'

"side minimap
Plug 'wfxr/minimap.vim'

"git helpers
Plug 'airblade/vim-gitgutter'

"commenting
Plug 'preservim/nerdcommenter'

"golang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

"autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"file tree
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}

"Icons and symbols
Plug 'ryanoasis/vim-devicons'

call plug#end()
"------------------------------------------------------------------------------

"KEY REMAPS AND ADDITIONAL PLUG SPECIFIC SETTINGS
"
"NERD Commenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" FORWARD SLASH IS ^_ or _ for keymaps!!!!!!!!
map <C-_> <plug>NERDCommenterToggle

"MINIMAP
let g:minimap_width = 10
let g:minimap_auto_start = 1
let g:minimap_auto_start_win_enter = 1
let g:minimap_highlight_range = 1

"Move between panes
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

"Toggle CHADtree
nnoremap <C-n> :CHADopen<CR>

"CHAD tree open and close
nnoremap <leader>v <cmd>CHADopen<cr>
