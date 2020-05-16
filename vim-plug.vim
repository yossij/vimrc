" airline
let g:airline_theme='deus'                              " airline theme
let g:airline#extensions#tabline#enabled = 1            " buffer tabs

" vim-plug start
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }     " fuzzy search
Plug 'neoclide/coc.nvim', {'branch': 'release'}         " intellisense engine
Plug 'joshdick/onedark.vim'                             " colorscheme
Plug 'preservim/nerdtree'                               " file tree
Plug 'dart-lang/dart-vim-plugin'                        " Dart
Plug 'thosakwe/vim-flutter'                             " flutter
Plug 'tpope/vim-fugitive'                               " git assistance
Plug 'airblade/vim-gitgutter'                           " git peek
Plug 'scrooloose/syntastic'                             " syntax checking
Plug 'hashivim/vim-terraform'                           " terraform
Plug 'juliosueiras/vim-terraform-completion'            " terraform
Plug 'vim-airline/vim-airline'                          " bottom line / buffer tabs
Plug 'vim-airline/vim-airline-themes'                   " bottom line theme
Plug 'yggdroot/indentline'                              " vertical line indent
Plug 'pseewald/vim-anyfold'                             " code fold
Plug 'chr4/nginx.vim'                                   " nginx colors
Plug 'chiel92/vim-autoformat'                           " code format

call plug#end()
