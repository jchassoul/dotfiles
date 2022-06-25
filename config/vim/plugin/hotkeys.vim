" cycle through location list
nmap <silent> <leader>] <Plug>(ale_next_wrap)
nmap <silent> <leader>[ <Plug>(ale_previous_wrap)

" Custom keys
map <leader>- :split<CR>
map <leader>\ :vsplit<CR>
map <leader>t :tabnew<CR>
map <leader>tc :ColorToggle<CR>
map <leader>s :update<CR>
map <leader>z :setlocal spell! spelllang=en_us<CR>
map <leader>e :Bdelete<CR>
map <leader>q :qa!<CR>

" Denite
nnoremap <leader>d :<C-u>Denite buffer<CR>
nnoremap <leader>f :<C-u>DeniteProjectDir -start-filter grep:::!<CR>
nnoremap <leader><BS> :<C-u>Denite -resume -cursor-pos=+1<CR>

" Spelling
inoremap <silent> <C-w> <C-x><C-k>

" Goyo
map gy :Goyo<CR>

" Resize
nnoremap <silent> <C-Left> :vertical resize +5<CR>
nnoremap <silent> <C-Right> :vertical resize -5<CR>
nnoremap <silent> <C-Up> :resize +5<CR>
nnoremap <silent> <C-Down> :resize -5<CR>

" Replace
nnoremap <leader>R :%s//gI<Left><Left><Left>

" Graphviz
map gv :Graphviz!<CR>

" Git
nnoremap <leader>gg :G<CR>
nnoremap <leader>gj :diffget //3<CR>
nnoremap <leader>gf :diffget //2<CR>
nnoremap <leader>ga :Git fetch --all<CR>
nnoremap <leader>gl :Git pull<CR>
nnoremap <leader>gc :Git commit<CR>
nnoremap <leader>gp :Git push<CR>
nnoremap <leader>gv :GV<CR>

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" CMake
nnoremap <leader>cg : CMakeGenerate<CR>
nnoremap <leader>cb : CMakeBuild<CR>

" Tests on different granularities
nnoremap <leader>ct : CMakeBuild test<CR>

nnoremap <leader>tn :TestNearest<CR>
nnoremap <leader>tf :TestFile<CR>
nnoremap <leader>ts :TestSuite -strategy=vimterminal<CR>
nnoremap <leader>tl :TestLast<CR>

" Quickfix
vmap <silent> <unique> <c-g> y:vimgrep "<c-r>"" **/**.*<CR>

nnoremap <leader>qe :copen<CR>
nnoremap <leader>j :cnext<CR>
nnoremap <leader>k :cprev<CR>
nnoremap <leader>qw :lopen<CR>
nnoremap <leader>qq :cclose<CR>

" F keys
nnoremap <F1> :tab h<CR>
nnoremap <F3> :Dirvish<CR>
nnoremap <F4> :<C-u>DeniteProjectDir file/rec/git -start-filter<CR>
nnoremap <F5> :UndotreeToggle<CR>
inoremap <F5> <C-R>=strftime("%c")<CR>
nnoremap <F7> :CalendarT<CR>
nnoremap <F8> :PomodoroStart<CR>

nmap <Leader>1 <Plug>lightline#bufferline#go(1)
nmap <Leader>2 <Plug>lightline#bufferline#go(2)
nmap <Leader>3 <Plug>lightline#bufferline#go(3)
nmap <Leader>4 <Plug>lightline#bufferline#go(4)
nmap <Leader>5 <Plug>lightline#bufferline#go(5)
nmap <Leader>6 <Plug>lightline#bufferline#go(6)
nmap <Leader>7 <Plug>lightline#bufferline#go(7)
nmap <Leader>8 <Plug>lightline#bufferline#go(8)
nmap <Leader>9 <Plug>lightline#bufferline#go(9)
nmap <Leader>0 <Plug>lightline#bufferline#go(10)
