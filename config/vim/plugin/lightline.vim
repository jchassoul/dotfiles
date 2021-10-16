let g:word_count=0

function UpdateWordCount()
      let lnum = 1
      let n = 0
      while lnum <= line('$')
            let n = n + len(split(getline(lnum)))
            let lnum = lnum + 1
      endwhile
      let g:word_count = n
endfunction
" Update the count when cursor is idle in command or insert mode.
" Update when idle for 1000 msec (default is 4000 msec).
set updatetime=1000
augroup WordCounter
      au! CursorHold,CursorHoldI * call UpdateWordCount()
augroup END

function! LightlineWordCount()
      return &filetype =~# '\v^(markdown|txt|vimwiki)' ? g:word_count . ' words' : ''
endfunction

function! Pomodoro()
      return pomo#status_bar()
endfunction

let g:lightline = {
                  \ 'colorscheme': 'onehalfdark',
                  \ 'active': {
                  \   'left': [ [ 'mode', 'paste' ], [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
                  \   'right': [ [ 'lineinfo' ], [ 'wordcount', 'percent' ], [ 'pomodoro', 'filetype' ] ]
                  \ },
                  \ 'tabline': {
                  \   'left': [ ['buffers'] ],
                  \   'right': [  ]
                  \ },
                  \ 'component_expand': {
                  \   'buffers': 'lightline#bufferline#buffers'
                  \ },
                  \ 'component_function': {
                  \   'gitbranch': 'FugitiveHead',
                  \   'wordcount': 'LightlineWordCount',
                  \   'pomodoro': 'Pomodoro',
                  \ },
                  \ 'component_type': {
                  \   'buffers': 'tabsel'
                  \ },
                  \ }

let g:lightline.component_expand = {
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_infos': 'lightline#ale#infos',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \ }

let g:lightline.component_type = {
      \     'linter_checking': 'right',
      \     'linter_infos': 'right',
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \     'linter_ok': 'right',
      \ }

let g:lightline.active = {
            \ 'right': [ [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok' ],
            \            [ 'lineinfo' ],
	    \            [ 'percent' ],
	    \            [ 'fileformat', 'fileencoding', 'filetype'] ] }

set showtabline=2

let g:lightline#bufferline#unnamed = '[No Name]'

let g:lightline#bufferline#enable_devicons = 1

autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()
