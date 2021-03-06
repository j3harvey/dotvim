" vim is not vi
set nocompatible

" load plugins
filetype on
filetype off
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
filetype plugin indent on

" tabs and indentation
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent

" behaviour
set backspace=indent,eol,start
set mouse=a
set term=xterm-256color
set modelines=0
"set textwidth=79
set directory=~/.vim/tmp
set cursorline
hi CursorLine term=bold cterm=bold ctermbg=black guibg=Grey60

" enable pasting when in insert mode
set paste

" appearance
set encoding=utf-8
set termencoding=utf-8
set laststatus=2
"set colorcolumn=80
set wildmenu
set wildignore=*.pyc
set title
set showcmd
set showmode
"set visualbell
set nofoldenable
set ruler

" Powerline appearance
let Powerline_symbols = "unicode"

" searching
set hlsearch
set incsearch
set showmatch
set smartcase
set ignorecase

" colors
syntax enable
"set background=dark
"colorscheme solarized

" key bindings
let mapleader = ","
map <silent> <leader><space> ;noh<CR>
map <F5> :mksession! ~/.vim_session <cr> " Quick write session with F5
map <F6> :source ~/.vim_session <cr>     " And load session with F6
nnoremap <leader>v V`]
nmap <silent> <leader>d "_d
vmap <silent> <leader>d "_d
nnoremap ' `
nnoremap ` '

" plugin key bindings
"nnoremap <F5> :GundoToggle<CR>
"map <F2> :NERDTreeToggle<CR>
"map <F3> :call FindInNERDTree()<CR>

" Unmap nerdcommenter's comment-invert, map instead change-inside-surroundings
"autocmd VimEnter * nunmap <Leader>ci
"autocmd VimEnter * nmap <script> <silent> <unique> <Leader>ci :ChangeInsideSurrounding<CR>

" filetype specific settings
autocmd FileType make setlocal noexpandtab
autocmd FileType ruby setlocal softtabstop=2 shiftwidth=2
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType python setlocal shiftwidth=4 tabstop=4
"autocmd FileType python setlocal textwidth=79
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd BufNewFile,BufRead *.less set filetype=less
autocmd BufNewFile,BufRead Vagrantfile set filetype=ruby
autocmd BufNewFile,BufRead *.json set filetype=javascript
autocmd BufNewFile,BufRead *.json set tw=0
autocmd BufNewFile,BufRead *.ebnf set filetype=ebnf
autocmd BufNewFile,BufRead *.fasta set filetype=fasta
autocmd FileType fasta setlocal wrap!

" supertab
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview
highlight Pmenu ctermbg=238 gui=bold

" matchit
"runtime macros/matchit.vim
