" cycle through location list
nmap <silent> <leader>n <Plug>(ale_next_wrap)
nmap <silent> <leader>p <Plug>(ale_previous_wrap)

" go to definition, go to reference, project rename
function! s:on_lsp_buffer_enabled() abort
  setlocal omnifunc=lsp#complete
  if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
  " some mappings to use, tweak as you wish.
  nmap <buffer> gd <plug>(lsp-definition)
  nmap <buffer> gr <plug>(lsp-references)
  nmap <buffer> <leader>rn <plug>(lsp-rename)
endfunction

map <leader>- :split<CR>
map <leader>\ :vsplit<CR>
map <leader>t :tabnew<CR>
map <leader>j :SlimeSend1 ipython --matplotlib<CR>
nnoremap <Leader>jq :SlimeSend1 exit<CR>
map <leader>l :ColorToggle<CR>
map <leader>q :q<CR>
map <leader>s :update<CR>
map <leader>S :setlocal spell! spelllang=en_us<CR>
map <leader>e :qa!<CR>
map <leader>c :setlocal formatoptions-=cro<CR>
map <leader>C :setlocal formatoptions=cro<CR>
" Denite
nnoremap <leader>w :<C-u>Denite buffer<CR>
nnoremap <leader>8 :<C-u>DeniteCursorWord grep:.<CR>
nnoremap <leader>/ :<C-u>Denite -start-filter grep:::!<CR>
nnoremap <leader><Space>/ :<C-u>DeniteBufferDir -start-filter grep:::!<CR>
nnoremap <leader>d :<C-u>DeniteBufferDir file/rec -start-filter<CR>
nnoremap <leader>r :<C-u>Denite -resume -cursor-pos=+1<CR>
nnoremap <leader><C-r> :<C-u>Denite register:.<CR>
" Resize
nnoremap <silent> <C-Left> :vertical resize +5<CR>
nnoremap <silent> <C-Right> :vertical resize -5<CR>
nnoremap <silent> <C-Up> :resize +5<CR>
nnoremap <silent> <C-Down> :resize -5<CR>
" Replace
nnoremap R :%s//gI<Left><Left><Left>
" Goyo
map <leader>gy :Goyo<CR>
" T Suite
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>

" F keys
nnoremap <F1> :tab h<CR>
nnoremap <F2> :UndotreeToggle<CR>
nnoremap <F3> :Dirvish<CR>
nnoremap <F4> :<C-u>Denite file/rec -start-filter<CR>
nmap <F7> :CalendarT<CR>

" The Operator
map ; :
noremap ;; ;

" Condition should identify terminal in question so
"  TODO missing f keys and test this shit yo! 
" that it won't change anything for terminals without this problem
if !has("gui_running") && $TERM is "xterm-256color"
    for [key, code] in [["<F1>", "\eOP"],
                        \["<F2>", "\eOQ"],
                        \["<F5>", "\e[15~"],
                        \]
        execute "set" key."=".code
    endfor
endif
