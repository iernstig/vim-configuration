map <space> <leader>
inoremap <c-c> <esc>
let maplocalleader="\\"
nnoremap <leader>es :tabe $HOME/.vim/configuration-loader.vim<Cr> "edit settings
nnoremap <leader>sv :source $MYVIMRC<cr>
" goto next or previous buffer
nnoremap <leader>bn :bn<cr>
nnoremap <leader>bp :bp<cr>
nnoremap <leader>nn :tabnew<cr>
nnoremap <leader>bb :Buffers<cr> "" FZF
nnoremap <leader>bd :bd<cr>
" save and close buffer
" source current file 
nnoremap <leader>so :execute ":so %"<cr> :echo "sourced ".getreg('%')<cr>
exec "nnoremap <leader>ss :mks! " . g:session_dir . "/"
exec 'nnoremap <Leader>sr :so ' . g:session_dir . '/'


"" Window splits
nnoremap <c-w>h :split<cr>
nnoremap <c-w>v :vsplit<cr>

" Visual mode!

"" Line nav
nnoremap H 0
nnoremap L $

"" for inserting in the next parenthesis! -- operator-pending mapping
onoremap in( :<c-u>normal! f(vi(<cr>
