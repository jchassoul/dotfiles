" ALE cycle through location list
nmap <silent> <leader>n <Plug>(ale_next_wrap)
nmap <silent> <leader>p <Plug>(ale_previous_wrap)

" Tests on different granularities
nmap <silent> tn :TestNearest<CR>
nmap <silent> tf :TestFile<CR>
nmap <silent> ts :TestSuite<CR>
nmap <silent> tl :TestLast<CR>

" Custom keys
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
nnoremap <leader>w :<C-u>DeniteCursorWord grep:.<CR>
nnoremap <leader>f :<C-u>DeniteProjectDir -start-filter grep:::!<CR>
nnoremap <leader>r :<C-u>Denite -resume -cursor-pos=+1<CR>

" Goyo
map gy :Goyo<CR>

" Resize
nnoremap <silent> <C-Left> :vertical resize +5<CR>
nnoremap <silent> <C-Right> :vertical resize -5<CR>
nnoremap <silent> <C-Up> :resize +5<CR>
nnoremap <silent> <C-Down> :resize -5<CR>

" Replace
nnoremap R :%s//gI<Left><Left><Left>

" Fun keys
nnoremap <F1> :tab h<CR>
nnoremap <F3> :Dirvish<CR>
nnoremap <F4> :<C-u>DeniteProjectDir file/rec/git -start-filter<CR>
nnoremap <F5> :UndotreeToggle<CR>
nnoremap <F7> :CalendarT<CR>
