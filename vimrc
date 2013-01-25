set nocompatible
syntax enable
call pathogen#infect()

set background=light
colorscheme solarized

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

" spellcheck
:map <F5> :setlocal spell! spelllang=en_us,bg<CR>
:imap <F5> <esc>:setlocal spell! spelllang=en_us,bg<CR>

" visual shifting (builtin-repeat)
vnoremap < <gv
vnoremap > >gv

" move in wrapped lines
noremap j gj
noremap k gk

" escape insert mode with jk
imap jk <ESC>

" Multipurpose tab key
" If at start of line indent. Else, do completion.
function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
  else
    return "\<c-p>"
  endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-n>

" highlight space errors
:highlight ExtraWhitespace ctermbg=239
" the following pattern will match trailing whitespace, except
" when typing at the end of a line.
" show tabs that are not at the start of a line:
:match ExtraWhitespace /\s\+\%#\@<!$\|[^\t]\zs\t\+/

" different error highlighting
hi Error ctermfg=210 ctermbg=239 gui=bold

" highlight long lines
let mapleader = ","
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
map <Leader>ll :2match OverLength /\%81v.\+/<cr>
map <Leader>lo :2match<cr>

" Only do this part when compiled with support for autocommands.
if has("autocmd")
  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Set File type to 'text' for files ending in .txt
  autocmd BufNewFile,BufRead *.txt setfiletype text

  " Enable soft-wrapping for text files
  autocmd FileType text,markdown,html,xhtml,eruby setlocal wrap linebreak nolist

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  " Automatically load .vimrc source when saved
  autocmd BufWritePost .vimrc source $MYVIMRC

  augroup END

else

  set autoindent                " always set autoindenting on

endif " has("autocmd")

"Enable loading of filetype plugins
filetype plugin indent on

