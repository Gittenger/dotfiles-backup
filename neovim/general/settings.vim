" color settings
syntax on
set t_Co=256
colorscheme onehalfdark
" let g:airline_theme='onehalfdark'
" lightline
" let g:lightline = { 'colorscheme': 'onehalfdark' }

" NERDTree settings
nmap <Leader>n :NERDTreeToggle<CR>
let NERDTreeIgnore = ['node_modules$']

set relativenumber
noremap <Leader>s :update<CR>
" no highlighting of search results
nnoremap <Leader><Space> :noh<return><esc>

" blinking cursor
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175

" snippets
nmap <Leader>ff Go@font-face {<CR>font-family: ;<CR>font-weight: 400;<CR>font-style: normal;<CR>src: url('../assets/fonts/') format('truetype');<CR>}<Esc>4k$i''<Esc>

