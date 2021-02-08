let g:neoformat_enabled_python = ['black' ]

let g:neoformat_c_clangformat = {
  \ 'exe': 'clang-format',
  \ 'args': ['--style="{IndentWidth: 4}"']
\}

let g:neoformat_enabled_c = ['clangformat']
