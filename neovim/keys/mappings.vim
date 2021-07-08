" alternate escape commands
inoremap jk <Esc>
inoremap kj <Esc>

" Save file
noremap <Leader>s :update<CR>

" Alternate way to save
"nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>

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
