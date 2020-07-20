call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
" themes and ui
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'

" Utilities
Plug 'dhruvasagar/vim-table-mode'
Plug 'junegunn/vim-easy-align' "Shortcuts??

"Files and sessions
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" COC and autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
" TODO: CODE-folding as an outline
" TODO: Learn build systems for larger projects
" TODO: https://github.com/mhinz/vim-signify
" TODO FASTFOLD
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'

" Lisp and racket extensions
" Plug 'tpope/vim-surround' "wrap forms elements with parenthesis
Plug 'kien/rainbow_parentheses.vim'
Plug 'wlangstroth/vim-racket'
Plug 'sjl/tslime.vim'

Plug 'preservim/nerdcommenter'

"" DEBUGGING
Plug 'puremourning/vimspector'

"" TaskWarrior
Plug 'blindFS/vim-taskwarrior' 

Plug 'lervag/vimtex'

"" TMUX nav
Plug 'christoomey/vim-tmux-navigator'

Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }
Plug 'tpope/vim-obsession'

Plug 'tmhedberg/SimpylFold' "folding for python
Plug 'jalvesaq/Nvim-R', {'branch': 'stable'} "R-language support

call plug#end()

"" Load all plugin configuration files
for file in split(glob('~/.vim/configuration-files/plugin-settings/*.vim', '\n'))
	exe 'source' file
endfor

