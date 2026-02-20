""" basic settings
set nocp                          " no-op in Nvim
set ignorecase smartcase          " search case-insensitively unless uppercase characters are used
" set hidden                        " allow unsaved buffers to be hidden
set visualbell                    " visual bell = no sounds
set showcmd                       " show current command in status line
set splitbelow splitright         " put new windows below or to the right
set number relativenumber         " line numbers but better
set signcolumn=yes                " keep signcolumn stable for gitgutter/ale
set wildmode=list:full            " customize the way that Vim handles tab-completion at the command prompt
set spelllang=en_us               " set spelling language
set nospell                       " turn off spelling by default
set cursorline                    " highlight current line
set showmatch                     " highlight matching [{()}]
set ar                            " Set autoread
set clipboard=unnamedplus         " use system clipboard for yanks/puts
set updatetime=100                " More frequent updates for vim-gitgutter to display changes for
set history=1000
set undolevels=1000
set undofile                      " persistent undo
set undodir=~/.vim/undo//

""" spaces, tabs, line sizing, completion
filetype plugin on                " load plugins based on file type
filetype indent on                " load indent settings based on file type
set shiftwidth=2                  " number of spaces to use for indenting
set softtabstop=2                 " number of spaces to use when inserting a tab
set tabstop=2                     " show tabs as 2 spaces
set expandtab                     " convert tabs into spaces
set autoindent                    " copy indent from previous line
set smartindent                   " Automatically inserts indentation in some cases
set cindent                       " Like smartindent, but stricter and more customisable
set omnifunc=syntaxcomplete#Complete "Enable omni completion
set completeopt=menuone,noselect
" set textwidth=120
" set colorcolumn=100

""" file type specific settings
augroup filetype_settings
  autocmd!
  autocmd FileType gitcommit setlocal tw=72 spell
  autocmd FileType markdown setlocal tw=80 conceallevel=2 spell
  autocmd FileType ruby setlocal ts=2 sts=2 sw=2
  autocmd FileType python setlocal ts=4 sts=4 sw=4
  autocmd FileType javascript setlocal ts=2 sts=2 sw=2
  autocmd FileType tex setlocal conceallevel=0 tw=100
augroup END
