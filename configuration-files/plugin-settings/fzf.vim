"" FZF mappings
nnoremap <leader>cc :Commands<cr>
nnoremap <leader>ll :Lines<cr>
nnoremap <leader>gf :GFiles<cr>
nnoremap <leader>ff :Files $PWD<cr>
"Hitting Ctrl-x will open the file under the cursor as a horizontal split.
"Hitting Ctrl-v will alternatively open that file as a vertical split.
nnoremap <leader>fpwd :Files $PWD<cr>
nnoremap <leader>hh :History<cr>

let g:fzf_colors =
			\ { 'fg':      ['fg', 'Normal'],
			\ 'bg':      ['bg', 'Normal'],
			\ 'hl':      ['fg', 'Comment'],
			\ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
			\ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
			\ 'hl+':     ['fg', 'Statement'],
			\ 'info':    ['fg', 'PreProc'],
			\ 'border':  ['fg', 'Ignore'],
			\ 'prompt':  ['fg', 'Conditional'],
			\ 'pointer': ['fg', 'Exception'],
			\ 'marker':  ['fg', 'Keyword'],
			\ 'spinner': ['fg', 'Label'],
			\ 'header':  ['fg', 'Comment'] }
