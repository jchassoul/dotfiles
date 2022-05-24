let g:vimwiki_list = [{'path': '~/vault/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

let g:vimwiki_global_ext = 0

let g:vimwiki_listsyms = '✗○◐●✓'

augroup vimwikigroup
      autocmd!
      " automatically update links on read diary
      autocmd BufRead,BufNewFile diary.md VimwikiDiaryGenerateLinks
augroup end
