" Python, Lua and Erlang!
let g:neoformat_enabled_python = ['black']

let g:neoformat_enabled_lua = ['luaformat']

let g:neoformat_enabled_erlang = ['erlfmt']

" custom setting for clangformat
let g:neoformat_cpp_clangformat = {
    \ 'exe': 'clang-format',
    \ 'args': ['--style="{IndentWidth: 4}"']
\}
let g:neoformat_enabled_cpp = ['clangformat']
let g:neoformat_enabled_c = ['clangformat']

" Enable alignment
let g:neoformat_basic_format_align = 0

" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 0

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

" Neoformat only msg when there is an error
let g:neoformat_only_msg_on_error = 1

augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END
