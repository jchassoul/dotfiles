" cycle through location list
nmap <silent> <leader>n <Plug>(ale_next_wrap)
nmap <silent> <leader>p <Plug>(ale_previous_wrap)

" Custom keys
map <leader>- :split<CR>
map <leader>\ :vsplit<CR>
map <leader>t :tabnew<CR>
map <leader>gj :SlimeSend1 ipython --matplotlib<CR>
nnoremap <Leader>jq :SlimeSend1 exit<CR>
map <leader>tc :ColorToggle<CR>
map <leader>s :update<CR>
map <leader>S :setlocal spell! spelllang=en_us<CR>
map <leader>e :qa!<CR>

" Denite
nnoremap <leader>f :<C-u>Denite buffer<CR>
nnoremap <leader>w :<C-u>DeniteCursorWord grep:.<CR>
nnoremap <leader>x :<C-u>DeniteProjectDir -start-filter grep:::!<CR>
nnoremap <leader>r :<C-u>Denite -resume -cursor-pos=+1<CR>

" Goyo
map gy :Goyo<CR>

" Resize
nnoremap <silent> <C-Left> :vertical resize +5<CR>
nnoremap <silent> <C-Right> :vertical resize -5<CR>
nnoremap <silent> <C-Up> :resize +5<CR>
nnoremap <silent> <C-Down> :resize -5<CR>

" Replace
nnoremap <leader>R :%s//gI<Left><Left><Left>

" Git
nnoremap <leader>gg :G<CR>
nnoremap <leader>gj :diffget //3<CR>
nnoremap <leader>gf :diffget //2<CR>
nnoremap <leader>ga :Git fetch --all<CR>
nnoremap <leader>gl :Git pull<CR>
nnoremap <leader>gc :Git commit<CR>
nnoremap <leader>gp :Git push<CR>

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
