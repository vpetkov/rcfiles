set clipboard=unnamed            " Access x clipboard

set lazyredraw                   " Don't repaint when scripts are running
set scrolloff=2                  " Keep 3 lines below and above the cursor
set number                       " Show line numbering
set numberwidth=1                " Use 1 col + 1 space for numbers

set mouse=n                      " Mouse only in normal mode.

set ignorecase                   " Search is case insensitive
set smartcase                    " Search case sensitive if caps on
set incsearch                    " Show best match so far

set showmatch                    " Briefly jump to the previous matching bracket
set matchtime=2                  " For .2 seconds
set formatoptions-=tc            " I can format for myself, thank you very much

set tabstop=2                    " Tab stop of 4
set shiftwidth=2                 " Sw 4 spaces (used on auto indent)
set softtabstop=2                " 4 spaces as a tab for bs/del
set expandtab                    " Make tab in spaces

set wrap linebreak               " Wrap whole words
set backspace=indent,eol,start   " Allow backspacing over everything in insert mode

set hidden                       " Allow unsaved background buffers and remember marks/undo for them
set backup                       "Store temporary files in a central spot
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

set showcmd                      " Display incomplete commands
set history=10000                " Keep 50 lines of command line history

set wildmenu                     " Make tab completion for files/buffers act like bash
set wildignore=*.o,*.obj,*.bak,*.exe,*.pyc,*.swp
set wildmode=longest,list
set completeopt=longest,menu
set complete=.,t

set autoread

set ruler                        " Line numbers and column the cursor is on
set laststatus=2                 " Always display the status line
"Statusline - filename hour:minutes:seconds Day Date Month Year ==== line,row, percent
set statusline=%F%m%r%h%w\ \%{strftime(\"\%H\:\%M\:\%S\ \%a\ \%d\ \%b\ \%Y\",getftime(expand(\"\%\%\")))}\ %=%=%l,%c\ (%p%%)

