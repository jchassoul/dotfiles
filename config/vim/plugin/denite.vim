autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
    nnoremap <silent><buffer><expr> <CR>
                \ denite#do_map('do_action')
    nnoremap <silent><buffer><expr> d
                \ denite#do_map('do_action', 'delete')
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

" Change matchers.
call denite#custom#source(
\ 'file_mru', 'matchers', ['matcher/fuzzy', 'matcher/project_files'])

call denite#custom#source('tag', 'matchers', ['matcher/substring'])

call denite#custom#source('file/old', 'converters',
      \ ['converter/relative_word'])

" Change sorters.
call denite#custom#source(
\ 'file/rec', 'sorters', ['sorter/sublime'])

" Ripgrep command on grep source
if executable('rg')
    let g:rg_derive_root='true'
    call denite#custom#var('grep', 'command', ['rg'])
    call denite#custom#var('grep', 'default_opts',
                \ ['-i', '--vimgrep', '--no-heading'])
    call denite#custom#var('grep', 'recursive_opts', [])
    call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
    call denite#custom#var('grep', 'separator', ['--'])
    call denite#custom#var('grep', 'final_opts', [])
    call denite#custom#var('file/rec', 'command',
                \ ['rg', '--files', '--glob', '!.git'])
endif

" Define alias
call denite#custom#alias('source', 'file/rec/git', 'file/rec')
call denite#custom#var('file/rec/git', 'command',
      \ ['git', 'ls-files', '-co', '--exclude-standard'])

call denite#custom#alias('source', 'file/rec/py', 'file/rec')
call denite#custom#var('file/rec/py', 'command',['scantree.py'])

" Change ignore_globs
call denite#custom#filter('matcher/ignore_globs', 'ignore_globs',
      \ [ '.git/', '.ropeproject/', '__pycache__/',
      \   'venv/', 'images/', '*.min.*', 'img/', 'fonts/'])

let s:denite_options = {
      \ 'prompt' : '>',
      \ 'split': 'floating',
      \ 'start_filter': 1,
      \ 'auto_resize': 1,
      \ 'source_names': 'short',
      \ 'direction': 'botright',
      \ 'highlight_filter_background': 'CursorLine',
      \ 'highlight_matched_char': 'Type',
      \ }

call denite#custom#option('default', s:denite_options)
