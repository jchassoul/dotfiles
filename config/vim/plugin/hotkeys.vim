" cycle through location list
nmap <silent> <leader>n <Plug>(ale_next_wrap)
nmap <silent> <leader>p <Plug>(ale_previous_wrap)

map <leader>- :split<CR>
map <leader>\ :vsplit<CR>
map <leader>t :tabnew<CR>
map <leader>j :SlimeSend1 ipython --matplotlib<CR>
nnoremap <Leader>jq :SlimeSend1 exit<CR>
map <leader>l :ColorToggle<CR>
map <leader>s :update<CR>
map <leader>S :setlocal spell! spelllang=en_us<CR>
map <leader>e :qa!<CR>
map <leader>c :setlocal formatoptions-=cro<CR>
map <leader>C :setlocal formatoptions=cro<CR>

" Denite
nnoremap <leader>q :<C-u>Denite buffer<CR>
nnoremap <leader>f :<C-u>DeniteProjectDir grep<CR>
nnoremap <leader>r :<C-u>Denite -resume -cursor-pos=+1<CR>

" Goyo
map <leader>gy :Goyo<CR>

" Resize
nnoremap <silent> <C-Left> :vertical resize +5<CR>
nnoremap <silent> <C-Right> :vertical resize -5<CR>
nnoremap <silent> <C-Up> :resize +5<CR>
nnoremap <silent> <C-Down> :resize -5<CR>

" Replace
nnoremap R :%s//gI<Left><Left><Left>

" T Suite
" TODO: WTF ARE THIS HOTKEYS? t Control wut?

nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>

nnoremap <F1> :tab h<CR>
nnoremap <F3> :Dirvish<CR>
nnoremap <F4> :<C-u>DeniteProjectDir file/rec/git -start-filter<CR>
nnoremap <F5> :UndotreeToggle<CR>
nmap <F7> :CalendarT<CR>

" Condition should identify terminal in question so
"  TODO missing f3 and f4 keys and test this shit yo!
" that it won't change anything for terminals without this problem
if !has("gui_running") && $TERM is "xterm-256color"
    for [key, code] in [["<F1>", "\eOP"],
                \["<F2>", "\eOQ"],
                \["<F5>", "\e[15~"],
                \]
        execute "set" key."=".code
    endfor
endif
