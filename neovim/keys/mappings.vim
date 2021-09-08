" alternate escape commands
inoremap jk <Esc>
inoremap kj <Esc>

" Save file
noremap <Leader>s :update<CR>

" Alternate way to save
"nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" quick close no save
nnoremap <Leader><Leader>q :q!<CR>

" Better tabbing
vnoremap < <gv
noremap > >gv

" Better line opening
nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da

" no highlighting of search results
nnoremap <Leader>\ :noh<return><esc>

" move window to tab
nnoremap <C-w>t <C-w>T

" jump out of brackets/etc
inoremap <C-k> <ESC>la
inoremap <C-l> <ESC>la
" jump back in
inoremap <C-j> <ESC>ha
inoremap <C-h> <ESC>ha

" quick copy to system clip
nnoremap <C-y>i "+yiw
vnoremap <C-y> "+y

" delete item with comma
nnoremap d, dawx
