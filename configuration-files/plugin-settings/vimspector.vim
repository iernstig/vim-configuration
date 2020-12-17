if isdirectory('~/.vim/pack')
	let g:vimspector_enable_mappings = 'HUMAN'
	packadd! vimspector
endif

nnoremap <leader>db :call vimspector#ToggleBreakpoint()<cr>
nnoremap <leader>dc :call vimspector#ClearBreakpoints()<cr>
nnoremap <leader>dr :call vimspector#Continue()<cr>
"nnoremap <leader>
