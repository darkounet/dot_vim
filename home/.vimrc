set shell=/bin/bash
set nocompatible
set encoding=utf8
filetype off
set paste
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set number
syntax on
set rtp+=~/.vim/bundle/Vundle.vim

" Vundle Plugins
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'sjl/badwolf'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'rodjek/vim-puppet'
Plugin 'chase/vim-ansible-yaml'
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'Yggdroot/indentLine'
Plugin 'ervandew/supertab'
Plugin 'evidens/vim-twig'
Plugin 'tpope/vim-surround'
Plugin 'godlygeek/tabular'
Plugin 'mhinz/vim-signify'
Plugin 'mhinz/vim-startify'
Plugin 'ryanoasis/vim-devicons'
Plugin 'scrooloose/syntastic'
Plugin 'honza/vim-snippets'
Plugin 'spolu/dwm.vim'
Plugin 'mattesgroeger/vim-bookmarks'

call vundle#end()

filetype plugin indent on

" Colorscheme
colorscheme badwolf

" Conf_Airline
" http://vimawesome.com/plugin/vim-airline
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" Conf_Gitgutter
let g:gitgutter_avoid_cmd_prompt_on_windows = 0

" Conf_Indentline
let g:indentLine_color_term = 239

" Conf_NERDTree
map <C-t> :NERDTreeToggle<CR>

" Conf_Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Conf_dmw

" Conf_vim_bookmarks
"
" Shortcut    Command
" mm  :BookmarkToggle
" mi  :BookmarkAnnotate <TEXT>
" mn  :BookmarkNext
" mp  :BookmarkPrev
" ma  :BookmarkShowAll
" mc  :BookmarkClear
" mx  :BookmarkClearAll

highlight BookmarkSign ctermbg=NONE ctermfg=160
highlight BookmarkLine ctermbg=194 ctermfg=NONE
let g:bookmark_sign = '♥'
let g:bookmark_highlight_lines = 1
