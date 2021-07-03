" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Prettier
    Plug 'prettier/vim-prettier'
    " COC
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Vim-snippets
    Plug 'honza/vim-snippets'
    " Colorizer
    Plug 'lilydjwg/colorizer'
    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    " this helps fzf know which directory is project root
    Plug 'airblade/vim-rooter'
    " EasyMotion
    Plug 'easymotion/vim-easymotion'
    
call plug#end()
