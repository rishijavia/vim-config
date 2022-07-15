""" set leader key
let mapleader = ","

""" key mappings

" nnoremap ; :
" nnoremap ' ;
" nnoremap j gj
" nnoremap k gk

""" Modify visual yank to write result to file
vnoremap y :yank<CR>gv:w! ~/.vim/.copy<CR>
noremap <C-p> :!cat ~/.vim/.copy<CR>

""" window navigation
nnoremap <C-h> <C-w><C-h>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>

""" HardTime mappings
nnoremap <Leader>h :HardTimeToggle<CR>

""" Suggestion
" Enter selects suggested item
inoremap <expr> <CR>  pumvisible() ? "\<C-y>" : "\<CR>"
" Ctrl-j moves down on suggestion menu
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
" Ctrl-k moves up on suggestion menu or move up in insert mode
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<Esc>O"

""" fzf and window splitting
noremap <C-p> :FZF<CR>
noremap <Leader>f :call fzf#run({'sink': 'edit',   'options': '-i', 'down': 10})<CR>
" noremap <Leader>v :call fzf#run({'sink': 'vsplit', 'options': '-i', 'down': 10})<CR>
" noremap <Leader>y :call fzf#run({'sink': 'vsplit', 'options': '-i -q ' . expand(ToggleRSpec()), 'down': 10})<CR>

""" no more trailing whitespace
noremap <Leader>w :call TrimWhitespace()<CR>

""" strikethrough shortcuts
" nmap <silent> <Plug>StrikethroughMarkdownBullet
                  \ k$0/[*-]\s<CR>:noh<CR>wi~~<Esc>A~~<Esc>
                  \:call repeat#set("\<Plug>StrikethroughMarkdownBullet")<CR>
" nmap <Leader>s <Plug>StrikethroughMarkdownBullet

""" NERD TREE
" Open NERDTree with ,n
nnoremap <silent> <Leader>n :NERDTreeToggle<CR>

""" buffer navigation
" nnoremap <Leader>r :bnext<CR>
" nnoremap <Leader>e :bprevious<CR>
" nnoremap <Leader>bq :bp <BAR> bd #<CR>
" nnoremap <Leader>bl :ls<CR>
" nnoremap <Leader>l :ls<CR>:b<space>

""" searching jumps to middle of screen
" nnoremap n nzz
" nnoremap N Nzz
" nnoremap * *zz
" nnoremap # #zz
" nnoremap g* g*zz
" nnoremap g# g#zz
