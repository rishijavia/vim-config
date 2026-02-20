""" look
set t_Co=256                      " set 256 bit coloring
set encoding=UTF-8                " set encoding to be UTF-8
if exists('+termguicolors')
  set termguicolors                 " true color support
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
syntax on                         " enable syntax highlighting
colorscheme tokyonight           " set colorscheme

" syntax color tweaks
hi link mkdCode Constant
hi! Boolean guifg=#cccccc gui=italic ctermfg=148
hi! LineNr guibg=#222226 guifg=#404044 ctermbg=235 ctermfg=242
