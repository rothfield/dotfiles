" let g:coc_disable_startup_warning = 1
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab 
"set tabstop=2
" Plugins will be downloaded under the specified directory.
" ~/.local/share/nvim/plugged
call plug#begin('~/.local/share/nvim/plugged')
" for vim ~/.vim/plugged')

" Declare the list of plugins.
" Plug 'tpope/vim-sensible'
" Plug 'junegunn/seoul256.vim'
Plug 'tpope/vim-fugitive'
Plug 'sbdchd/neoformat'
Plug 'prettier/vim-prettier'
"  Bundle 'Lokaltog/vim-easymotion'
"  Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"  Bundle 'tpope/vim-rails.git'
Plug 'vim-ruby/vim-ruby'
Plug 'slim-template/vim-slim'
Plug 'ngmy/vim-rubocop', { 'for': 'ruby' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mrdotb/vim-tailwindcss'
"  Bundle 'guns/vim-clojure-static'
"  Bundle 'tpope/vim-fireplace'
"  Bundle 'tpope/vim-fugitive'
"  Bundle 'scrooloose/syntastic'
"  Bundle "pangloss/vim-javascript"
"  Bundle 'jelera/vim-javascript-syntax'
"  Bundle 'jtratner/vim-flavored-markdown'
Plug 'preservim/nerdtree'
Plug 'Chiel92/vim-autoformat'
"  Bundle 'kchmck/vim-coffee-script'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'w0rp/ale'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()
let g:ale_fixers = {
  \ 'javascript': ['eslint'],
  \ 'ruby': ['rubocop']
  \ }

let g:ale_fix_on_save = 1

set expandtab
set shiftwidth=2
set softtabstop=2


map <leader>d <Plug>(ale_fix)


autocmd BufReadPost * if @% !~# '\.git[\/\\]COMMIT_EDITMSG$' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif 

syntax enable
filetype plugin indent on
"  :au FocusLost * :wa # save on losing focus!!

" coc config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ ]
" highlights yanked text
augroup highlight_yank
  autocmd!
  autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank()
augroup END


