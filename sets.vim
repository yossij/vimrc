if has("gui_running")
  " GUI is running or is about to start.
  set lines=45 columns=150  " normal window size
  set guioptions -=T        " remove toolbar
endif

autocmd VimEnter * NERDTree " run NERDTree on startup

set encoding=utf-8      " utf-8
set nocompatible        " be iMproved, required
set wildmenu            " visual autocomplete for command menu
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set foldenable          " enable folding
set expandtab           " use spaces instead of tabs
set number              " show line number
set visualbell          " blink cursor on error instead of beeping
set history=1000        " history to 1000 lines
set showcmd             " show commands
set ignorecase          " ignore case
set smartcase           " smart ignore case
set lbr                 " line break
set ai                  " auto indent
set si                  " smart indent
set nobackup            " don't save backup files

set rtp+=/home/linuxbrew/.linuxbrew/opt/fzf

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround
set bg=dark
