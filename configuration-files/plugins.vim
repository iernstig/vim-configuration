" install plug if not present
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

if version > 8
	:packadd termdebug 
end

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" THEMES 
Plug 'morhetz/gruvbox'
Plug 'rakr/vim-one'
Plug 'tomasiser/vim-code-dark'
Plug 'crusoexia/vim-monokai'
Plug 'kyoz/purify', {'rtp': 'vim'}
Plug 'doums/darcula'
Plug 'dracula/vim'
Plug 'ayu-theme/ayu-vim'
" END THEMES
"Plug 'junegunn/vim-easy-align' 
Plug 'godlygeek/tabular'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'rking/ag.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'dense-analysis/ale'
Plug 'puremourning/vimspector' 
Plug 'sheerun/vim-polyglot'
Plug 'liuchengxu/vista.vim'
" Plug 'jiangmiao/auto-pairs'
" TODO: https://github.com/mhinz/vim-signify
Plug 'Konfekt/FastFold'
Plug 'tpope/vim-fugitive' 
Plug 'tpope/vim-surround'
Plug 'tpope/vim-eunuch' "" not really using this atm...
Plug 'prettier/vim-prettier', {
      \ 'do': 'yarn install',
      \ 'for': 
      \['javascript',
      \ 'typescript',
      \ 'css',
      \ 'less',
      \ 'scss',
      \ 'json',
      \ 'graphql',
      \ 'markdown',
      \ 'vue',
      \ 'svelte',
      \ 'yaml',
      \ 'html'] 
      \}
Plug 'justinmk/vim-sneak' "" not really using this either...
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'wlangstroth/vim-racket'
Plug 'sjl/tslime.vim'
Plug 'preservim/nerdcommenter'
Plug 'vim-scripts/tinykeymap'
Plug 'honza/vim-snippets'
Plug 'dhruvasagar/vim-table-mode'
if executable('task')
  Plug 'blindFS/vim-taskwarrior'
end
Plug 'majutsushi/tagbar' 
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-obsession'
Plug 'tmhedberg/SimpylFold' "folding for python
"" Plug 'khzaw/vim-conceal'
Plug 'junegunn/goyo.vim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'chrisbra/csv.vim'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'lifepillar/vim-solarized8'
Plug 'HendrikPetertje/vimify'
call plug#end()

" Run PlugInstall if there are missing plugins
if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"" Load all plugin configuration files
for file in split(glob('~/.vim/configuration-files/plugin-settings/*.vim', '\n'))
	exe 'source' file
endfor

"" Source the strike-through/underline plugin
"" source $HOME/.vim/configuration-files/unicode-strikethrough-underline.vim

