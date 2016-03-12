" vim:fdm=marker
" runtime macros/matchit.vim

set nocompatible
set encoding=utf-8

filetype plugin indent on 

" Plugins {{{
call plug#begin('~/.vim/plugged')

Plug 'sheerun/vim-polyglot'
Plug 'christoomey/vim-tmux-navigator'
Plug 'valloric/youcompleteme', { 'do': './install.py' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'chun-yang/vim-ag-anything'
Plug 'rking/ag.vim'
Plug 'skwp/greplace.vim'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'Raimondi/delimitMate'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'

" theme
Plug 'altercation/vim-colors-solarized'

call plug#end()
" }}}

syntax on

" Options {{{
set autoindent
set autoread
set backup
set backupdir=~/.vim/backup//
set undodir=~/.vim/undo//
set undofile
set relativenumber
set ruler
set nowrap
set number
set noswapfile
set noerrorbells
set splitbelow
set splitright
set tabstop=2 softtabstop=2 shiftwidth=2
set expandtab
set showtabline=2
set smarttab
set ttyfast
set lazyredraw
set colorcolumn=80
set backspace=indent,eol,start
set laststatus=2 " show the satus line all the time

" theme
let g:solarized_termcolors=16
set background=dark
colorscheme solarized
" }}}


let g:mapleader = "\<space>"

"  ctrlp {{{
let g:ctrlp_custom_ignore = '\v[\/](\.(git|hg|svn))$'
let g:ctrlp_reuse_window = 'netrw\|help\|quickfix'
let g:ctrlp_use_caching = 0
let g:ctrlp_user_command = [
      \ '.git',
      \ 'cd %s && git ls-files . -co --exclude-standard',
      \ 'find %s -type f'
      \ ]
let g:ctrlp_working_path_mode = 'r'
" }}}

" ycm {{{
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_semantic_triggers =  {
      \   'c' : ['->', '.'],
      \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
      \             're!\[.*\]\s'],
      \   'ocaml' : ['.', '#'],
      \   'cpp,objcpp' : ['->', '.', '::'],
      \   'perl' : ['->'],
      \   'php' : ['->', '::'],
      \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
      \   'ruby' : ['.', '::'],
      \   'lua' : ['.', ':'],
      \   'erlang' : [':'],
      \   'css,scss,sass' : ['re!^\s*', 're![;:]\s*'],
      \   'html,xml,erb,ejs,liquid' : ['<', 're!<.*\s', '</']
      \ }
" }}}

" projectionist {{{
let g:projectionist_heuristics = {
      \ "Gemfile": {"alternate": "Gemfile.lock"},
      \ }
" }}}

" ag {{{
let g:ag_working_path_mode = 'r'
let g:ag_mapping_message = 0
let g:ag_highlight = 0
" }}}

" Greplace {{{
set grepprg=ag
let g:grep_cmd_opts = '--line-numbers --noheading'
" }}}

" airline {{{
let g:airline_theme = 'solarized'
let g:airline#extensions#hunks#non_zero_only = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#show_splits = 0
let g:airline_powerline_fonts = 1
" }}}

inoremap jk <esc>

map <f4> :set wrap! linebreak! list!<cr>
map <Leader>i mmgg=G`m<cr>
map <Leader>p :set paste<cr>o<esc>"*]p:set nopaste<cr>
map <Leader>r :source $MYVIMRC<cr>
map <Leader>v :set paste!<cr>

nnoremap <left> <c-w>2<
nnoremap <down> <c-w>2-
nnoremap <up> <c-w>2+
nnoremap <right> <c-w>2>
