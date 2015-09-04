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
set hlsearch
set incsearch
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
Plugin 'koreyconway/ranger.vim'

call vundle#end()

filetype plugin indent on

" Colorscheme
colorscheme badwolf

" Conf_Airline
" http://vimawesome.com/plugin/vim-airline
set laststatus=2
set t_Co=256
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1


" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
call NERDTreeHighlightFile('ds_store', 'Gray', 'none', '#686868', '#151515')
call NERDTreeHighlightFile('gitconfig', 'Gray', 'none', '#686868', '#151515')
call NERDTreeHighlightFile('gitignore', 'Gray', 'none', '#686868', '#151515')
call NERDTreeHighlightFile('bashrc', 'Gray', 'none', '#686868', '#151515')
call NERDTreeHighlightFile('bashprofile', 'Gray', 'none', '#686868', '#151515')


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

" Conf_Ranger
nnoremap <f9> :tabe %:p:h<cr>

if exists("g:loaded_webdevicons")
    call webdevicons#refresh()
endif

