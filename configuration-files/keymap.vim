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
exec     'nnoremap <Leader>sr :so ' . g:session_dir . '/'
exec     "nnoremap <leader>ss :mks! " . g:session_dir . "/"

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
"" Something stopped working here, and I dunno what or why. But that's an
"" issue which you'll have to postpone to the future...

"if executable('xclip')
  "vnoremap <leader>y :w !xclip -selection clipboard<cr>
"endif
"if executable('pbcopy')
  "vnoremap <leader>y :w !pbcopy -selection clipboard<cr>
"endif

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


"" fold all metod 
nnoremap zdoc :call CommentPydoc()

function AtEndOfFile()
  return line(".") == line("$")
endfunction

function CommentPydoc()
  :normal zR
  :normal gg
  
  while !AtEndOfFile()
    """ find if the current line has the three rabbit-snips for comment
    if match(getline('.'), '"""') > 0
      """
      :normal za
    endif
    """ Move through all the comments syntactically
    :normal ]mj 
  endwhile
endfunction


function! Get_visual_selection()
  "Get the position of left start visual selection
  let [line_start, column_start] = getpos("'<")[1:2]
  "Get the position of right end visual selection
  let [line_end, column_end] = getpos("'>")[1:2]
  "gotta catch them all.
  let lines = getline(line_start, line_end)
  if len(lines) == 0
    return ''
  endif
  "edge cases and cleanup.
  let lines[-1] = lines[-1][: column_end - 2]
  let lines[0] = lines[0][column_start - 1:]
  return join(lines, "\n")
endfunction

function Save_visually_selected_text_to_file(bufferpath)
    let selected_text = Get_visual_selection()
    call writefile(split(selected_text, "\n"), a:bufferpath)
endfunction


vnoremap <leader>y  ma"+y <cr>`a
vnoremap <leader>p ma"+p <cr>`a



