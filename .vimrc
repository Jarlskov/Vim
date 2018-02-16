set nocompatible              " be iMproved, required
filetype off                  " required

syntax enable                     " Turn on syntax highlighting.
filetype plugin indent on         " Turn on file type detection.

" Set tab button mappings
map <F6> :tabp<cr>
map <F7> :tabn<cr>

runtime macros/matchit.vim        " Load the matchit plugin.

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.
set cursorline

set backspace=indent,eol,start    " Intuitive backspacing.

set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set number                        " Show line numbers.
set ruler                         " Show cursor position.

set incsearch                     " Highlight matches as you type.
set nohlsearch                      " Highlight matches.

"set wrap                          " Turn on line wrapping.
set scrolloff=2                   " Show 5 lines of context around the cursor.

set title                         " Set the terminal's title

set visualbell                    " No beeping.

" set nobackup                      " Don't make a backup before overwriting a file.
" set nowritebackup                 " And again.
" set directory=~/.vim/tmp//,.      " Keep swap files in one location

set tabstop=4                    " Global tab width.
set shiftwidth=4                 " And again, related.
set expandtab                    " Use spaces instead of tabs
set autoindent
set smartindent

set laststatus=2                  " Show the status line all the time

set statusline=%t\       "tail of the filename
set statusline+=%m\      "modified flag
set statusline+=%y\      "filetype
set statusline+=b%-3.3n\  "buffer number
set statusline+=%r      "read only flag
set statusline+=%=      "left/right separator
set statusline+=\ \ %c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file

set t_Co=256
colorscheme wombatmod

:set pastetoggle=<F3>

" Remove trailing whitespace.
" map <leader>s :%s/\s\+$//e<cr>

" Check php files for errors
set makeprg=php\ -l\ %
set errorformat=%m\ in\ %f\ on\ line\ %l

" Automatic fold settings for specific files.
autocmd FileType php setlocal foldmethod=indent
autocmd FileType css  setlocal foldmethod=indent
autocmd FileType vue  setlocal foldmethod=indent
autocmd FileType js setlocal foldmethod=indent
autocmd FileType ts setlocal foldmethod=indent
autocmd FileType html setlocal foldmethod=indent
"let php_folding = 1

" Fold function.
" map <leader>zf $zf%
nnoremap <space> za
vnoremap <space> zf

" sass syntax highlighting
autocmd BufRead,BufNewFile *.css,*.scss,*.less setlocal foldmethod=marker foldmarker={,}

"Sourced from vim tip: http://vim.wikia.com/wiki/Keep_folds_closed_while_inserting_text
autocmd InsertEnter * if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif
autocmd InsertLeave,WinLeave * if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif
" Get json syntax highlighting for free like this.
autocmd BufNewFile,BufRead *.json set ft=javascript
autocmd BufRead,BufNewFile *.scss set filetype=scss.css

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

inoremap {<CR> {<CR>}<Esc>O
inoremap (<CR> (<CR>)<Esc>O
inoremap [<CR> [<CR>]<Esc>O
inoremap <leader>; <C-o>A;
inoremap <leader>, <C-o>A,

set guioptions-=r
set guioptions-=L
set guioptions-=T

