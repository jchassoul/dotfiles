" linters for different filetypes
let g:ale_linters = {
      \ 'python': ['vim-lsp', 'flake8', 'pylint'],
      \ 'lua': ['vim-lsp', 'luacheck'],
      \ 'cpp': ['vim-lsp', 'clang'],
      \ 'c': ['vim-lsp', 'clang'],
      \ 'erlang': ['vim-lsp', 'syntaxerl']
\}

" disable ale lsp client
let g:ale_disable_lsp = 1

" Only run linters in the g:ale_linters dictionary
let g:ale_linters_explicit = 1

" Linter signs
let g:ale_sign_error = ' '
let g:ale_sign_warning = ' '
let g:ale_statusline_format = ['  %d', '  %d', '']
