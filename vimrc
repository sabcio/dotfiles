" vim:fdm=marker

set nocompatible
set encoding=utf-8

" Plugins {{{
call plug#begin('~/.vim/plugged')

Plug 'sheerun/vim-polyglot'
Plug 'christoomey/vim-tmux-navigator'
Plug 'valloric/youcompleteme', { 'do': './install.py' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'chun-yang/vim-ag-anything'
Plug 'rking/ag.vim'

call plug#end()
" }}}


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

map <f4> :set wrap! linebreak! list!<cr>
map <Leader>i mmgg=G`m<cr>
map <Leader>p :set paste<cr>o<esc>"*]p:set nopaste<cr>
