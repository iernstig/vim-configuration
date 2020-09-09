call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'junegunn/vim-easy-align' 
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'puremourning/vimspector' "TODO: test to debug c-program
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
" TODO: https://github.com/mhinz/vim-signify
" TODO FASTFOLD
Plug 'Konfekt/FastFold'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'prettier/vim-prettier' ""TODO: automate on save
Plug 'justinmk/vim-sneak'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'wlangstroth/vim-racket'
Plug 'sjl/tslime.vim'
Plug 'preservim/nerdcommenter'
if executable('task')
	Plug 'blindFS/vim-taskwarrior'
end
Plug 'majutsushi/tagbar' 
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

