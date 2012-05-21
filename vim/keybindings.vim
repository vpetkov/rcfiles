source ~/.vim/cyrillic.vim

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

