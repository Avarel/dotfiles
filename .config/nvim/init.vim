" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin(stdpath('data') . '/plugged')

Plug 'tomasiser/vim-code-dark'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'romgrk/barbar.nvim'
Plug 'kyazdani42/nvim-tree.lua'

call plug#end()

" autocmd vimenter * NERDTree
" let NERDTreeShowHidden=1
" map <F5> :NERDTreeToggle<CR>

let bufferline = get(g:, 'bufferline', {})

let g:nvim_tree_auto_open = 1 "0 by default, opens the tree when typing `vim $DIR` or `vim`
let g:nvim_tree_auto_close = 1 "0 by default, closes the tree when it's the last window

set winhighlight=Normal:MyNormal,NormalNC:MyNormalNC

set fillchars+=vert:│
colorscheme codedark
set mouse=a
set number
set noshowmode

set tabstop     =4
set softtabstop =4
set shiftwidth  =4
set expandtab
highlight! EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg

let g:lightline = {
      \ 'colorscheme': 'codedark',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
