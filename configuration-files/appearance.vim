set t_Co=256
colorscheme gruvbox
set background=light
set termguicolors
let g:airline_powerline_fonts=0
let g:gruvbox_sign_column='bg0'
let g:gruvbox_contrast_dark='medium'
let g:gruvbox_contrast_light='soft'
let g:gruvbox_invert_tabline=1
let g:gruvbox_invert_indent_guides=1
let g:gruvbox_improved_warnings=1
let g:gruvbox_improved_strings=1
set cursorline
set guifont=Fira\ Code
"" Font for terminal is 'Hack Nerd Font'
set guioptions= "" remove scroll bars in macvim
hi Cursor cterm=inverse
autocmd ColorScheme *
" Spelling
hi SpellBad cterm=underline
