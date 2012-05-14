" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

call pathogen#infect()

set t_Co=256
let g:zenburn_terminal_Background=1
colorscheme zenburn

source ~/.vim/bulgarian.vim
source ~/.vim/mac.vim

" No Help, please
nmap <F1> <Esc>

" Save all buffers if in normal mode
nmap <F2> :wa<CR>

" Save current buffer if in input mode
imap <F2> <esc>:w<CR>a

" spellcheck
:map <F7> :setlocal spell! spelllang=en_us,bg<CR>
:imap <F7> <esc>:setlocal spell! spelllang=en_us,bg<CR>

" tab navigation (next tab) with alt left / alt right
nnoremap  <c-pageup>  gt
nnoremap  <c-pagedown>   gT

" visual shifting (builtin-repeat)
vnoremap < <gv
vnoremap > >gv

" Toggle the tag list bar
map <F9> :TlistToggle<CR>
imap <F9> <esc>:TlistToggle<CR>a

" Toggle the task list
map <F3> :TaskList<CR>

" Print buffer in console
map <F12> :!clear; cat %<CR>

" move in wrapped lines
noremap j gj
noremap k gk

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MULTIPURPOSE TAB KEY
" Indent if we're at the beginning of a line. Else, do completion.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ARROW KEYS ARE UNACCEPTABLE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"map <Left> :echo "no!"<cr>
"map <Right> :echo "no!"<cr>
"map <Up> :echo "no!"<cr>
"map <Down> :echo "no!"<cr>
"map <Home> :echo "no!"<cr>
"map <End> :echo "no!"<cr>

set nobackup
set nowritebackup
set wildmenu                     " : menu has tab completion, etc

set hidden                       " allow unsaved background buffers and remember marks/undo for them

" Searching and Patterns
set ignorecase                   " search is case insensitive
set smartcase                    " search case sensitive if caps on 
set incsearch                    " show best match so far
"set hlsearch                    " highlight search results

" Display
set background=dark              " I use dark background
set lazyredraw                   " Don't repaint when scripts are running
set scrolloff=2                  " Keep 3 lines below and above the cursor
set number                       " Show line numbering
set numberwidth=1                " Use 1 col + 1 space for numbers

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

set completeopt=longest,menu
set wildmode=longest,list

set wildmenu                     " make tab completion for files/buffers act like bash
set complete=.,t

" Mouse
set mouse=n                      " mouse only in normal mode.
"set mousehide                   " hide the cursor while writing

" Clipboard
set clipboard=unnamed            " access x clipboard

" Statusline
set laststatus=2                 " show
"Statusline - filename hour:minutes:seconds Day Date Month Year ==== line,row, percent
set statusline=%F%m%r%h%w\ \%{strftime(\"\%H\:\%M\:\%S\ \%a\ \%d\ \%b\ \%Y\",getftime(expand(\"\%\%\")))}\ %=%=%l,%c\ (%p%%)

" don't want to edit these type of files
set wildignore=*.o,*.obj,*.bak,*.exe,*.pyc,*.swp

"edit a file as root
command! -bar -nargs=0 SudoW   :setl nomod|silent exe 'write !sudo tee %>/dev/null'|let &mod = v:shell_error

"highlight space errors
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

" taglist
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_WinWidth = 50
let Tlist_Exit_OnlyWindow = 1


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

