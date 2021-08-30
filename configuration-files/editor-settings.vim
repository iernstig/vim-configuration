
" Configuration Philosophy: Keep It Simple Stupid
"
" General editor configuration
syntax enable set encoding=utf-8
" relative no for focused, norelativenumber for unfocused
set number relativenumber
":augroup numbertoggle
":  autocmd!
":  autocmd BufEnter,FocusGained * set relativenumber
":  autocmd BufLeave,FocusLost   * set norelativenumber
":augroup END
set mouse=a
set ignorecase hlsearch "" Searching highlight
set textwidth=0
autocmd FileType text setlocal textwidth=80
set colorcolumn=80
"" Spell checking
set spell spelllang=en_us
set spellfile=$HOME/.vim/configuration-files/en.utf-8.add
set complete+= "k" "" Enable dictionary auto-completion
let g:netrw_banner=0 "" Remove banner for file browser
"" Replace tabs with spaces for Haskell for instance
set expandtab
set tabstop=4
set shiftwidth=4
set clipboard=unnamed "share clipboard osx

"" Remove trailing whitespaces by pressing f5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

"" Code folding
set foldmethod=syntax
set foldnestmax=10
set autochdir "" Automatically change dir to current file in editor

set signcolumn=yes
set foldlevel=99

let g:session_dir="~/.vim-sessions"

command! WipeReg :call WipeReg()
function WipeReg()  
    for i in range(34,122) 
        silent! call setreg(nr2char(i), []) 
    endfor
endfunction
"autocmd filetype lisp,scheme,art setlocal equalprg=scmindent.rkt

"" Prevent VIM from selecting all the text in the terminal!
autocmd VimEnter * set t_ut=

"" UNDO breakpoints
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u
inoremap [ [<c-g>u
inoremap ] ]<c-g>u
inoremap { {<c-g>u
inoremap } }<c-g>u
inoremap _ _<c-g>u

"" Jumplist mutation -> ensure moving relative added to jumplist. 
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'
