call plug#begin('~/.vim/plugged')

"tab and shiftwidth automation
Plug 'tpope/vim-sleuth'
Plug 'editorconfig/editorconfig-vim'

"git helpers
Plug 'airblade/vim-gitgutter'

"golang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

"autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}


call plug#end()

"tab and shiftwidth defaults
set expandtab
set tabstop=4
set shiftwidth=4

" :help listchars
set list
"set nolist
set listchars=tab:>\ ,eol:¬
