" set leader
let g:mapleader = "\<Space>"

syntax enable											" enables syntax highlighting
set encoding=utf-8								" displayed encoding
set pumheight=10									" smaller pop up menu height
set fileencoding=utf-8						" encoding for file write
set cmdheight=2										" more room for messages
set mouse=a												" enable mouse
set t_Co=256											" 256 colors
set conceallevel=0								" better for MD files
set tabstop=2											" 2 spaces for tab
set shiftwidth=2									" for indent
set smarttab											" realizes 2 tab vs 4
set laststatus=0									" always display status line
"set expandtab											" convert tabs to spaces
set autoindent										" remembers indent from prev line
set relativenumber								" relative line numbers
set showtabline=2									" show tab page num
set noshowmode										" don't show mode
set nobackup											" coc recommend
set nowritebackup									" coc recommend
"set formatoptions-=cro						" stop newline completion of comments

" color scheme
colorscheme onehalfdark
" let g:airline_theme='onehalfdark'
" lightline
" let g:lightline = { 'colorscheme': 'onehalfdark' }

" blinking cursor
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175

" NERDTree settings
nmap <Leader>n :NERDTreeToggle<CR>
let NERDTreeIgnore = ['node_modules$']

" snippets
nmap <Leader>ff Go@font-face {<CR>font-family: ;<CR>font-weight: 400;<CR>font-style: normal;<CR>src: url('../assets/fonts/') format('truetype');<CR>}<Esc>4k$i''<Esc>

