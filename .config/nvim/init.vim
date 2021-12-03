call plug#begin('~/.vim/plugged')

"tab and shiftwidth automation
Plug 'tpope/vim-sleuth'
Plug 'editorconfig/editorconfig-vim'

"git helpers
Plug 'airblade/vim-gitgutter'


call plug#end()

"tab and shiftwidth defaults
set expandtab
set tabstop=4
set shiftwidth=4
