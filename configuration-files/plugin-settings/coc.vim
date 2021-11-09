let g:coc_config_home="$HOME/.vim/configuration-files"
let g:coc_global_extensions = [
			\ 'coc-marketplace', 'coc-tsserver', 
			\ 'coc-html', 'coc-css', 'coc-vimlsp',
			\ 'coc-explorer', 'coc-lists' , 
            \ 'coc-pyright', 'coc-json', 'coc-clangd',
			\ 'coc-vimlsp', 'coc-yaml'
            \]
" 'coc-tabnine', - caused memory leak issue - I think...
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

"" Pydoc
nmap <silent> ga <Plug>(coc-codeaction-line)
xmap <silent> ga <Plug>(coc-codeaction-selected)
nmap <silent> gA <Plug>(coc-codeaction)

"" Sort imports on save
autocmd BufWritePre *.py :CocCommand python.sortImports


function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

nmap     <leader>ee :CocCommand explorer --quit-on-open<cr>

if $CONDA_PREFIX == ""
  let s:current_python_path=$CONDA_PYTHON_EXE
else
  let s:current_python_path=$CONDA_PREFIX.'/bin/python'
endif
call coc#config('python', {'pythonPath': s:current_python_path})

let g:coc_explorer_global_presets = {
\   '.vim': {
\     'root-uri': '~/.vim',
\   },
\   'cocConfig': {
\      'root-uri': '~/.config/coc',
\   },
\   'tab': {
\     'position': 'tab',
\     'quit-on-open': v:true,
\   },
\   'tab:$': {
\     'position': 'tab:$',
\     'quit-on-open': v:true,
\   },
\   'floating': {
\     'position': 'floating',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingTop': {
\     'position': 'floating',
\     'floating-position': 'center-top',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingLeftside': {
\     'position': 'floating',
\     'floating-position': 'left-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingRightside': {
\     'position': 'floating',
\     'floating-position': 'right-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'simplify': {
\     'file-child-template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
\   },
\   'buffer': {
\     'sources': [{'name': 'buffer', 'expand': v:true}]
\   },
\ }
nnoremap <leader>ee :CocCommand explorer --preset simplify --quit-on-open<CR>
nnoremap <leader>ef :CocCommand explorer --preset floating<CR>
nnoremap <leader>ec :CocCommand explorer --preset cocConfig<CR>
nnoremap <leader>eb :CocCommand explorer --preset buffer<CR>

