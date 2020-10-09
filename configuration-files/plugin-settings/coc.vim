let g:coc_config_home="$HOME/.vim/configuration-files"
let g:coc_global_extensions = [
			\ 'coc-python', 'coc-marketplace', 'coc-tsserver', 
			\ 'coc-html', 'coc-css', 'coc-vimlsp',
			\ 'coc-explorer', 'coc-lists' 
			\]
"'coc-json', missing since something coc won't update shit
"" Auto completion popup
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

let g:coc_snippet_next="<c-n>"
let g:coc_snippet_prev="<c-p>"

inoremap <silent><expr> <C-k> coc#refresh()
nnoremap <leader>diag :CocDiagnostics<cr>
nmap     <silent> <leader>gp <Plug>(coc-diagnostic-prev-error)
nmap     <silent> <leader>gn <Plug>(coc-diagnostic-next-error)
nnoremap <leader>cD :CocDisable<cr>
nnoremap <leader>cE :CocEnable<cr>
nmap     <leader>qf <Plug>(coc-fix-current)
nmap     <leader>gd <Plug>(coc-definition)
nmap     <leader>gy <Plug>(coc-type-definition)
nmap     <leader>gi <Plug>(coc-implementation)
nmap     <leader>gr <Plug>(coc-references)
nmap     <leader>rr <Plug>(coc-rename)
nmap     <silent> K :call <SID>show_documentation()<CR>
nmap     <leader>cr :CocRestart

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

nmap     <leader>ee :CocCommand explorer<cr>




