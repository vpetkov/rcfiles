" Clipboard
set clipboard=unnamed            " access x clipboard

" Display
set lazyredraw                   " Don't repaint when scripts are running
set scrolloff=2                  " Keep 3 lines below and above the cursor
set number                       " Show line numbering
set numberwidth=1                " Use 1 col + 1 space for numbers

" Mouse
set mouse=n                      " mouse only in normal mode.
"set mousehide                   " hide the cursor while writing

" Searching and Patterns
set ignorecase                   " search is case insensitive
set smartcase                    " search case sensitive if caps on 
set incsearch                    " show best match so far
"set hlsearch                    " highlight search results

" Editing
set backspace=2                  " Backspace over anything! (Super backspace!)
set showmatch                    " Briefly jump to the previous matching paren
set matchtime=2                  " For .2 seconds
set formatoptions-=tc            " I can format for myself, thank you very much
set tabstop=4                    " Tab stop of 4
set shiftwidth=4                 " sw 4 spaces (used on auto indent)
set softtabstop=4                " 4 spaces as a tab for bs/del
set expandtab                    " make tab in spaces
"set autoindent                  " Auto indent
set wrap linebreak               " Wrap whole words
set backspace=indent,eol,start   " allow backspacing over everything in insert mode
"set cursorline                  " highlight the current line
set ruler                        " line numbers and column the cursor is on
set showcmd                      " display incomplete commands
set history=50                   " keep 50 lines of command line history

set nobackup
set nowritebackup
set wildmenu                     " make tab completion for files/buffers act like bash
set hidden                       " allow unsaved background buffers and remember marks/undo for them
set completeopt=longest,menu
set complete=.,t
set laststatus=2
set wildmode=longest,list
set wildignore=*.o,*.obj,*.bak,*.exe,*.pyc,*.swp

"Statusline - filename hour:minutes:seconds Day Date Month Year ==== line,row, percent
set statusline=%F%m%r%h%w\ \%{strftime(\"\%H\:\%M\:\%S\ \%a\ \%d\ \%b\ \%Y\",getftime(expand(\"\%\%\")))}\ %=%=%l,%c\ (%p%%)

"edit a file as root
command! -bar -nargs=0 SudoW   :setl nomod|silent exe 'write !sudo tee %>/dev/null'|let &mod = v:shell_error

