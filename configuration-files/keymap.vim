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

"" FZF mappings
nnoremap <leader>cc :Commands<cr>
nnoremap <leader>ll :Lines<cr>
nnoremap <leader>gf :GFiles<cr>
nnoremap <leader>ff :Files ~<cr>
nnoremap <leader>hh :History<cr>


"" TASKWARRIOR
nnoremap <leader>tw :TW<CR>
nnoremap <leader>tu :TWUndo<CR>
nnoremap <leader>ts :TWSync<CR>
nnoremap <leader>tr :TWReportInfo<CR>
nnoremap <leader>t? :h tw-quickref<CR>
"Delete completed tasks                                      *:TWDeleteCompleted*
"list history records using |unite.vim|                                *:TWHistory*
"list bookmarks using |unite.vim|                                     *:TWBookmark*
"clear bookmarks                                               *:TWBookmarkClear*
"4.2 Local Commands                                              *tw-lc-commands*
"------------------------------------------------------------------------------
"Add an annotation                                                  *:TWAnnotate*
"Mark task done                                                     *:TWComplete*
"Delete a task                                                        *:TWDelete*
"Delete an annotation                                       *:TWDeleteAnnotation*
"Make changes to a task interactively                      *:TWModifyInteractive*
"Run the info report                                              *:TWReportInfo*

nnoremap <c-b> <c-w><
nnoremap <c-n> <c-w>>
"" Window splits
nnoremap <c-w>h :split<cr>
nnoremap <c-w>v :vsplit<cr>


"" split explore vertical or horizontal
nnoremap <leader>sev :execute ":Vexplore! ~/Bookmarks"<cr>
nnoremap <leader>seh :execute ":Hexplore! ~/Bookmarks"<cr>
nnoremap <leader>Tex :execute ":Texplore ~/Bookmarks"<cr>
nnoremap <leader>tex :Texplore<cr>

" Visual mode!
xmap ga <Plug>(EasyAlign)

"" Line nav
nnoremap H 0
nnoremap L $

"" for inserting in the next parenthesis! -- operator-pending mapping
onoremap in( :<c-u>normal! f(vi(<cr>
