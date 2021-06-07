" (I use ALE for that).
let g:lsp_diagnostics_enabled = 0

" show diagnostic signs
let g:lsp_signs_enabled = 0
let g:lsp_signs_error = {'text': ''}
let g:lsp_signs_warning = {'text': ''}
let g:lsp_highlights_enabled = 0

" Do not use virtual text, they are far too obtrusive.
let g:lsp_virtual_text_enabled = 0
" echo a diagnostic message at cursor position
let g:lsp_diagnostics_echo_cursor = 0
" show diagnostic in floating window
let g:lsp_diagnostics_float_cursor = 0
" whether to enable highlight a symbol and its references
let g:lsp_highlight_references_enabled = 1
let g:lsp_preview_max_width = 80

let g:lsp_document_code_action_signs_enabled = 0

let g:lsp_settings_filetype_lua = ['sumneko-lua-language-server']
let g:lsp_settings_filetype_erlang = ['erlang-ls']

let g:lsp_settings = {
      \ 'clangd': {'cmd':['clangd-8']},
      \ 'erlang-ls': {'cmd': $HOME . '/.local/share/vim-lsp-settings/servers/erlang-ls/_build/default/bin/erlang_ls --transport stdio '}
      \}

if executable('pyls')
  augroup python_setup
    autocmd!
    autocmd User lsp_setup call lsp#register_server({
          \ 'name': 'pyls',
          \ 'cmd': {server_info->['pyls']},
          \ 'allowlist': ['python'],
          \ 'workspace_config': {
          \    'pyls':
          \        {'configurationSources': ['flake8'],
          \         'plugins': {'flake8': {'enabled': v:true},
          \                     'pyflakes': {'enabled': v:false},
          \                     'pycodestyle': {'enabled': v:false},
          \                     'jedi_completion': {'fuzzy': v:true},
          \                    }
          \        }
          \ }})
  augroup END
endif

if executable('clangd-8')
    augroup lsp_clangd
        autocmd!
        autocmd User lsp_setup call lsp#register_server({
              \ 'name': 'clangd',
              \ 'cmd': {server_info->['clangd-8']},
              \ 'whitelist': ['c', 'cpp'],
              \ })
    augroup end
endif

function! s:on_lsp_buffer_enabled() abort
  setlocal omnifunc=lsp#complete
  if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
  " some mappings to use, tweak as you wish.
  nmap <buffer> gd <plug>(lsp-definition)
  nmap <buffer> gr <plug>(lsp-references)
  nmap <buffer> <F6> <plug>(lsp-rename)
endfunction

augroup lsp_install
  au!
  " call s:on_lsp_buffer_enabled only for languages that has the server registered.
  autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END
