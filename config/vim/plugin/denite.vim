let s:denite_options = {
      \ 'prompt' : '>',
      \ 'start_filter': 1,
      \ 'auto_resize': 1,
      \ 'source_names': 'short',
      \ 'direction': 'botright',
      \ 'highlight_filter_background': 'CursorLine',
      \ 'highlight_matched_char': 'Type',
      \ }

call denite#custom#option('_', 'statusline', v:false)
call denite#custom#source(
      \ 'file_mru', 'matchers', ['matcher/fuzzy', 'matcher/project_files'])
call denite#custom#source('tag', 'matchers', ['matcher/substring'])
call denite#custom#source('file/old', 'converters',
      \ ['converter/relative_word'])
call denite#custom#source(
      \ 'file/rec', 'sorters', ['sorter/sublime'])
call denite#custom#alias('source', 'file/rec/git', 'file/rec')
call denite#custom#var('file/rec/git', 'command',
      \ ['git', 'ls-files', '-co', '--exclude-standard'])
call denite#custom#filter('matcher/ignore_globs', 'ignore_globs',
      \ [ '.git/', '.ropeproject/', '__pycache__/',
      \   'venv/', 'images/', '*.min.*', 'img/', 'fonts/'])
call denite#custom#option('default', s:denite_options)

autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
        \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> <c-t>
        \ denite#do_map('do_action', 'tabopen')
  nnoremap <silent><buffer><expr> <c-v>
        \ denite#do_map('do_action', 'vsplit')
  nnoremap <silent><buffer><expr> <c-x>
        \ denite#do_map('do_action', 'split')
  nnoremap <silent><buffer><expr> p
        \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q
        \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> i
        \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> V
        \ denite#do_map('toggle_select').'j'
endfunction

autocmd FileType denite-filter call s:denite_filter_my_settings()
function! s:denite_filter_my_settings() abort
  call deoplete#custom#buffer_option('auto_complete', v:false)
  imap <silent><buffer> <tab> <Plug>(denite_filter_quit)
  inoremap <silent><buffer><expr> <CR> denite#do_map('do_action')
  inoremap <silent><buffer><expr> <c-t>
        \ denite#do_map('do_action', 'tabopen')
  inoremap <silent><buffer><expr> <c-v>
        \ denite#do_map('do_action', 'vsplit')
  inoremap <silent><buffer><expr> <c-x>
        \ denite#do_map('do_action', 'split')
  inoremap <silent><buffer><expr> <esc>
        \ denite#do_map('quit')
  inoremap <silent><buffer> <C-j>
        \ <Esc><C-w>p:call cursor(line('.')+1,0)<CR><C-w>pA
  inoremap <silent><buffer> <C-k>
        \ <Esc><C-w>p:call cursor(line('.')-1,0)<CR><C-w>pA
endfunction

call denite#custom#var('file/rec', 'command',
      \ ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])

call denite#custom#var('grep', {
      \ 'command': ['ag'],
      \ 'default_opts': ['-i', '--vimgrep'],
      \ 'recursive_opts': [],
      \ 'pattern_opt': [],
      \ 'separator': ['--'],
      \ 'final_opts': [],
      \ })

call denite#custom#alias('source', 'file/rec/py', 'file/rec')
call denite#custom#var('file/rec/py', 'command',
      \ ['scantree.py', '--path', ':directory'])
