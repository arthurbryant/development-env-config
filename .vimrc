set nocompatible
filetype off
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle'))
endif

set background=dark
set ruler                     " show the line number on the bar
set more                      " use more prompt
set autoread                  " watch for file changes
set number                    " line numbers
set hidden
set noautowrite               " don't automagically write on :next
set lazyredraw                " don't redraw when don't have to
set showmode
set showcmd
"set autoindent smartindent    " auto/smart indent
set smartindent
set smarttab                  " tab and backspace are smart
set tabstop=4                 " 4 spaces
set shiftwidth=4
set scrolloff=5               " keep at least 5 lines above/below
set sidescrolloff=5           " keep at least 5 lines left/right
set history=200
set backspace=indent,eol,start
set linebreak
set cmdheight=2               " command line two lines high
set undolevels=1000           " 1000 undos
set updatecount=100           " switch every 100 chars
set complete=.,w,b,u,U,t,i,d  " do lots of scanning on tab completion
set ttyfast                   " we have a fast terminal
set noerrorbells              " No error bells please
set shell=bash
set fileformats=unix
set ff=unix
filetype on                   " Enable filetype detection
filetype indent on            " Enable filetype-specific indenting
filetype plugin on            " Enable filetype-specific plugins
set wildmode=longest:full
set wildmenu                  " menu has tab completion
let maplocalleader=','        " all my macros start with ,
set laststatus=2

"  searching
set incsearch                 " incremental search
set ignorecase                " search ignoring case
set hlsearch                  " highlight the search
set showmatch                 " show matching bracket
set diffopt=filler,iwhite     " ignore all whitespace and sync

"  backup
set backup
set backupdir=~/.vim_backup
set viminfo=%100,'100,/100,h,\"500,:100,n~/.viminfo
"set viminfo='100,f1

" spelling
if v:version >= 700
  " Enable spell check for text files
  autocmd BufNewFile,BufRead *.txt setlocal spell spelllang=en
endif

" mappings
" toggle list mode
nmap <LocalLeader>tl :set list!<cr>
" toggle paste mode
nmap <LocalLeader>pp :set paste!<cr>

"set fileencodings=iso-2022-jp,sjis,utf8
"set fileencodings=ucs-bom,utf-8,gb18030,gbk,gb2312,big5,euc-jp,euc-kr,latin1,cp936

set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis
set fileformats=unix,dos,mac

"set termencoding=utf-8
"set encoding=utf-8

set expandtab
set iskeyword+=:

"javascript
call pathogen#infect()

"JsBeautfy
map <c-f> :call JsBeautify()<cr>
" or
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

NeoBundle 'thinca/vim-quickrun'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'Shougo/neocomplcache.vim'

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files --exclude-standard'] " speedup
let g:neocomplcache_enable_at_startup = 1



" surrounding with braces or quotes with s and S key
NeoBundle 'tpope/vim-surround'

" autocompletes parenthesis, braces and more
NeoBundle 'kana/vim-smartinput'
call smartinput#define_rule({ 'at': '\[\_s*\%#\_s*\]', 'char': '<Enter>', 'input': '<Enter><C-o>O' })
call smartinput#define_rule({ 'at': '{\_s*\%#\_s*}'  , 'char': '<Enter>', 'input': '<Enter><C-o>O' })
call smartinput#define_rule({ 'at': '(\_s*\%#\_s*)'  , 'char': '<Enter>', 'input': '<Enter><C-o>O' })


NeoBundle 'tpope/vim-fugitive', { 'augroup' : 'fugitive' }

" rich-formatted undo history
NeoBundle 'sjl/gundo.vim'
let g:gundo_right = 1
let g:gundo_close_on_revert = 1

" Search word with * and # also on Visual Mode
NeoBundle 'thinca/vim-visualstar'

" Move among buffer, quickfix, loclist, ...so many... and encode/decode.
" ]e to exchange line, ]n to go to next SCM conflict marker.
NeoBundle 'tpope/vim-unimpaired'

" Add repeat support to some plugins, like surround.vim
NeoBundle 'tpope/vim-repeat'

" Instant and Cool modeline
NeoBundle 'Lokaltog/vim-powerline'
if has('gui_macvim') && has('gui_running')
    let g:Powerline_symbols = 'fancy'
else
    let g:Powerline_symbols = 'unicode'
endif


" http://stackoverflow.com/questions/7187477/vim-smart-insert-semicolon
vmap <C-F>; :normal A;<Esc><CR>
nmap <C-F>; :call Semicolonfun(';')<CR>
imap <C-F>; <C-R>=Semicolonfun(';')<CR>
vmap <C-F>, :normal A,<Esc><CR>
nmap <C-F>, :call Semicolonfun(',')<CR>
imap <C-F>, <C-R>=Semicolonfun(',')<CR>
vmap <C-F>: :normal A:<Esc><CR>
nmap <C-F>: :call Semicolonfun(':')<CR>
imap <C-F>: <C-R>=Semicolonfun(':')<CR>
function! Semicolonfun(char)
    call setline(line('.'), substitute(getline('.'), '\s*$', a:char, ''))
    return ''
endfunction

filetype plugin on
filetype indent on

syntax on
