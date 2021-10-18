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
                  \   'right': [ [ 'linter_checking', 'linter_errors', 'linter_warnings' ], [ 'lineinfo' ], [ 'wordcount', 'percent' ], [ 'pomodoro', 'filetype' ] ]
                  \ },
                  \ 'tabline': {
                  \   'left': [ ['buffers'] ],
                  \   'right': [  ]
                  \ },
                  \ 'component_expand': {
                  \  'buffers': 'lightline#bufferline#buffers',
                  \  'linter_checking': 'lightline#ale#checking',
                  \  'linter_warnings': 'lightline#ale#warnings',
                  \  'linter_errors': 'lightline#ale#errors',
                  \ },
                  \ 'component_function': {
                  \   'gitbranch': 'FugitiveHead',
                  \   'wordcount': 'LightlineWordCount',
                  \   'pomodoro': 'Pomodoro',
                  \ },
                  \ 'component_type': {
                  \   'buffers': 'tabsel',
                  \   'linter_checking': 'right',
                  \   'linter_warnings': 'warning',
                  \   'linter_errors': 'error',
                  \ },
                  \ }

set showtabline=2

let g:lightline#bufferline#unnamed = '[No Name]'

let g:lightline#bufferline#enable_devicons = 1

autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()
