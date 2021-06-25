set runtimepath^=~/.vim runtimepath+=~/.vim/after

let &packpath = &runtimepath
source ~/.vimrc

set clipboard=unnamedplus "sets the default copy register to be +

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

Plug 'vim-ruby/vim-ruby'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'fatih/vim-go'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'

let NERDTreeShowHidden=1

" Fuzzy file finder
nnoremap <C-p> :FZF<cr>
nnoremap <C-b> :Ag<cr>

" Initialize plugin system
call plug#end()

nnoremap <esc> :noh<return><esc>
map <C-n> :NERDTreeToggle<CR>
map <leader> :NERDTreeFind<CR>
let g:NERDTreeNodeDelimiter = "\u00a0"

syntax off
