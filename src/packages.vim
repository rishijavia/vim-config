""" load packages -
call plug#begin('~/.vim/plugged')
  Plug 'sweitzma/vim-colors-meh'                        " minimal colorscheme
  Plug 'scrooloose/nerdtree'                            " file system explorer for the Vim editor
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }   " fzf bindings and functions
  Plug 'junegunn/fzf.vim'
  Plug 'itchyny/lightline.vim'                          " better status bar
  Plug 'mg979/vim-visual-multi', {'branch': 'master'}   " in analogy with visual-block
  Plug 'sheerun/vim-polyglot'                           " lazy loading many syntax types
  Plug 'dense-analysis/ale'                             " syntax checking and semantic errors
  Plug 'airblade/vim-gitgutter'                         " shows a git diff in the sign column
  Plug 'tpope/vim-fugitive'                             " git funtionality
  Plug 'jiangmiao/auto-pairs'                           " automatically complete pairs
  Plug 'takac/vim-hardtime'                             " break slow habits in Vim
call plug#end()

""" [plugin] Ale                                        " Let ale run linters
let g:ale_linters = {
  \'ruby': ['ruby', 'rubocop'],
  \'jsx': ['eslint'],
  \'javascript': ['eslint'],
  \'javascript.jsx': ['eslint'],
\}
let g:ale_set_highlights = 1                            " Enable ale highlighting
let g:ale_fix_on_save = 1                               " Fix files automatically on save

""" [plugin] NERDTree
" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Open NERDTree automatically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

""" [plugin] Lightline
set laststatus=2
set showtabline=2
let g:lightline#bufferline#show_number     = 1
let g:lightline#bufferline#shorten_path    = 1

let g:lightline                  = {}
let g:lightline.colorscheme      = 'wombat'
let g:lightline.tabline          = {}
let g:lightline.tabline.left     = [['buffers']]
let g:lightline.tabline.right     = []

let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type   = {'buffers': 'tabsel'}
let g:lightline.active           = {}
let g:lightline.active.left      = [['mode', 'paste'], ['readonly', 'filename', 'modified']]
let g:lightline.active.right     = [['lineinfo'], ['percent'],['fileformat', 'fileencoding', 'filetype']]

""" [plugin] vim-hardtime
let g:hardtime_default_on = 1
let g:hardtime_maxcount = 4
let g:hardtime_timeout = 1000
