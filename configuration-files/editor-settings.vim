
" Configuration Philosophy: Keep It Simple Stupid
"
" General editor configuration
syntax enable
set encoding=utf-8
set relativenumber
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

set autochdir "" Automatically change dir to current file in editor

if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif


autocmd filetype lisp,scheme,art setlocal equalprg=scmindent.rkt

"" Remember: split all buffers into tabs using
"" :tab sball

