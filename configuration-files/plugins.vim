call plug#begin()
Plug 'tpope/vim-sensible'
" themes and ui
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'

" Utilities
Plug 'dhruvasagar/vim-table-mode'
Plug 'junegunn/vim-easy-align' "Shortcuts??

"Files and sessions
Plug 'francoiscabrol/ranger.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" COC and autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
" TODO: LSP for python, lisp, c++, latex, R?
" TODO: SLIME+TMUX for above
" TODO: CODE-folding as an outline
" TODO: Debugger SLIME?
" TODO: Learn build systems for larger projects

" Lisp and racket extensions
" Plug 'tpope/vim-surround' "wrap forms elements with parenthesis
Plug 'kien/rainbow_parentheses.vim'
Plug 'wlangstroth/vim-racket'

Plug 'preservim/nerdcommenter'

"" DEBUGGING
Plug 'puremourning/vimspector'

"" GTD
Plug 'phb1/gtd.vim'


"" TMUX nav
Plug 'christoomey/vim-tmux-navigator'

call plug#end()

"" Plugin configurations

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#tab_nr_type= 2
let g:airline#extensions#tabline#show_tab_type = 1

let g:coc_global_extensions = [
			\'coc-python',
			\'coc-marketplace'
			\]

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
