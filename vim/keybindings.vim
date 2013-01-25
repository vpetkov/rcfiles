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

