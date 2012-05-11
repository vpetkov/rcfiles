" MacVim GUI Options
if has("gui_running")
	set guioptions=egmrt
	set guioptions-=T        " No Toolbar in GVim
	set guioptions-=r        " No Right-hand scroll
	set guioptions-=l        " No Left-hand scroll
	set noerrorbells
	set visualbell
endif

