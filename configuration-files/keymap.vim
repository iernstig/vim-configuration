map      <space> <leader>
inoremap <c-c> <esc>
let      maplocalleader="\\"
nnoremap <leader>es :tabe $HOME/.vim/configuration-loader.vim<Cr> "edit settings
nnoremap <leader>sv :source $MYVIMRC<cr>
" goto next or previous buffer
nnoremap <leader>bn :bn<cr>
nnoremap <leader>bp :bp<cr>
nnoremap <leader>nn :tabnew<cr>
nnoremap <leader>tn :tabnext<cr>
nnoremap <leader>tp :tabprevious<cr>
nnoremap <leader>tc :tabclose<cr>
nnoremap <leader>tab :tabs<cr>
nnoremap <leader>bb :Buffers<cr> 
nnoremap <leader>qq :bp<bar>sp<bar>bn<bar>bd<CR>

" save and close buffer
" source current file 
nnoremap <leader>so :execute ":so %"<cr> :echo "sourced ".getreg('%')<cr>
exec     "nnoremap <leader>ss :mks! " . g:session_dir . "/"
exec     'nnoremap <Leader>sr :so ' . g:session_dir . '/'

"" Line nav
nnoremap H 0
nnoremap L $
"" Sane yank
nnoremap Y y$ 

"" keeping cursor centered when jumping around
nnoremap n nzzzv
nnoremap N Nzzzv
"" Does not work cuz I'm using coc... @TODO
nnoremap <C-j> :cnext<CR>zzzv 
"" Merge 2 lines. OMG this is so nice
nnoremap J mzJ`z


"" Yank to xclip clipboard
if executable('xclip')
  vnoremap <leader>y :w !xclip -selection clipboard<cr>
endif
if executable('pbcopy')
  vnoremap <leader>y :w !pbcopy <cr>
endif

"" Quitting session without deleting it!
nnoremap <leader>ZZ :wqa<cr>

"" for inserting in the next parenthesis! -- operator-pending mapping
onoremap in( :<c-u>normal! f(vi(<cr>

"" Moving lines and chunks around
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-j> <esc>:m .+1<CR>==
inoremap <C-k> <esc>:m .-2<CR>==
nnoremap <leader>j :m .+1<CR>==
nnoremap <leader>k :m .-2<CR>==



