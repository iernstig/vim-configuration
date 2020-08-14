
" Configuration Philosophy: Keep It Simple Stupid
"
" General editor configuration
syntax enable
set encoding=utf-8
" relative no for focused, norelativenumber for unfocused
set number relativenumber
":augroup numbertoggle
":  autocmd!
":  autocmd BufEnter,FocusGained * set relativenumber
":  autocmd BufLeave,FocusLost   * set norelativenumber
":augroup END
set ignorecase hlsearch "" Searching highlight
set textwidth=80
set colorcolumn=80
"" Spell checking
set spell spelllang=en_us
set spellfile=$HOME/.vim/configuration-files/en.utf-8.add
set complete+= "k" "" Enable dictionary auto-completion
let g:netrw_banner=0 "" Remove banner for file browser
set tabstop=4
set shiftwidth=4
set clipboard=unnamed "share clipboard osx

"" Code folding
set foldmethod=syntax
set foldnestmax=10
set foldenable
set foldlevel=2
set foldlevelstart=0
set autochdir "" Automatically change dir to current file in editor

set signcolumn=yes

let g:session_dir="~/.vim-sessions"

autocmd filetype lisp,scheme,art setlocal equalprg=scmindent.rkt
