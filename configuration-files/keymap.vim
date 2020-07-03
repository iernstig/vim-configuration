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
nnoremap <leader>qq :bd<cr>
" save and close buffer
" source current file 
nnoremap <leader>so :execute ":so %"<cr> :echo "sourced ".getreg('%')<cr>
exec "nnoremap <leader>ss :mks! " . g:session_dir . "/"
exec 'nnoremap <Leader>sr :so ' . g:session_dir . '/'

""enable and disable COC
nnoremap <leader>cd :CocDisable<cr>
nnoremap <leader>ce :CocEnable<cr>

nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>rr <Plug>(coc-rename)
nmap <leader>g[ <Plug>(coc-diagnostic-prev)
nmap <leader>g] <Plug>(coc-diagnostic-next)
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

nmap <silent> <leader>gp <Plug>(coc-diagnostic-prev-error)
nmap <silent> <leader>gn <Plug>(coc-diagnostic-next-error)
nnoremap <leader>cr :CocRestart

"" FZF mappings
nnoremap <leader>cc :Commands<cr>
nnoremap <leader>ll :Lines<cr>
nnoremap <leader>gf :GFiles<cr>
nnoremap <leader>ff :Files ~<cr>
nnoremap <leader>hh :History<cr>


"" TASKWARRIOR
nnoremap <leader>tw :TW<CR>
nnoremap <leader>tu :TWUndo<CR>
nnoremap <leader>tr :TWReportInfo<CR>
nnoremap <leader>t? :h tw-quickref<CR>

"" Window splits
nnoremap <c-w>h :split<cr>
nnoremap <c-w>v :vsplit<cr>

"" split explore vertical or horizontal
nnoremap <leader>sev :execute ":Vexplore! ~/Bookmarks"<cr>
nnoremap <leader>seh :execute ":hexplore! ~/bookmarks"<cr>
nnoremap <leader>tex :execute ":texplore ~/bookmarks"<cr>
nnoremap <leader>tex :Texplore<cr>

" Visual mode!
xmap ga <Plug>(EasyAlign)

"" Line nav
nnoremap H 0
nnoremap L $

"" for inserting in the next parenthesis! -- operator-pending mapping
onoremap in( :<c-u>normal! f(vi(<cr>
