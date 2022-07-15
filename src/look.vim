""" look
set t_Co=256                      " set 256 bit coloring
set encoding=UTF-8                " set encoding to be UTF-8
syntax on                         " enable syntax highlighting
colorscheme meh                   " set colorscheme

" syntax color tweaks
hi link mkdCode Constant
hi! Boolean guifg=#cccccc gui=italic ctermfg=148
hi! LineNr guibg=#222226 guifg=#404044 ctermbg=235 ctermfg=242
