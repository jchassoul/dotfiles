" linters for different filetypes
let g:ale_linters = {
      \ 'python': ['flake8', 'pylint'],
      \ 'lua': ['luacheck'],
      \ 'erlang': ['erlc']
      \}

" Only run linters in the g:ale_linters dictionary
let g:ale_linters_explicit = 1

" Linter signs
let g:ale_sign_error = '⨉'
let g:ale_sign_warning = '⚠'
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '']

" cycle through location list
nmap <silent> <leader>n <Plug>(ale_next_wrap)
nmap <silent> <leader>p <Plug>(ale_previous_wrap)
