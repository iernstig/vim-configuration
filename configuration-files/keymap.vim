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
" save and close buffer
nnoremap qq :bd<cr>
" source current file 
nnoremap <leader>ss :w<cr>
nnoremap <leader>so :execute ":so %"<cr> :echo "sourced ".getreg('%')<cr>

""enable and disable COC
nnoremap <leader>cd :CocDisable<cr>
nnoremap <leader>ce :CocEnable<cr>


"" FZF mappings
nnoremap <leader>cc :Commands<cr>
nnoremap <leader>ll :Lines<cr>
nnoremap <leader>gf :GFiles<cr>
nnoremap <leader>ff :Files<cr>
nnoremap <leader>hh :History<cr>


"" window nav 
nnoremap <c-l> <c-w>l
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-q> <c-w>q
nnoremap <c-b> <c-w><
nnoremap <c-n> <c-w>>
"" split explore vertical or horizontal
nnoremap <leader>sev :execute ":Vexplore! ~/Bookmarks"<cr>
nnoremap <leader>seh :execute ":Hexplore! ~/Bookmarks"<cr>
nnoremap <leader>Tex :execute ":Texplore ~/Bookmarks"<cr>
nnoremap <leader>tex :Texplore<cr>

" Visual mode!
xmap ga <Plug>(EasyAlign)

"" Line nav
nnoremap H 0
nnoremap L $
"" Delete line
inoremap <c-d> <esc>ddi

"" Upper case 
nnoremap <leader>t vlw~<esc>
nnoremap <leader>u vlwU<esc>

"" for inserting in the next parenthesis! -- operator-pending mapping
onoremap in( :<c-u>normal! f(vi(<cr>
