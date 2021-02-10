nmap <F3> <Plug>(dirvish-toggle)
nnoremap <silent> <Plug>(dirvish-toggle) :<C-u>call <SID>dirvish_toggle()<CR>

function! s:dirvish_toggle() abort
  let l:last_buffer = bufnr('$')
  let l:i = 1
  let l:dirvish_already_open = 0

  while l:i <= l:last_buffer
    if bufexists(l:i) && bufloaded(l:i) && getbufvar(l:i, '&filetype') ==? 'dirvish'
      let l:dirvish_already_open = 1
      execute ':'.l:i.'bd!'
    endif
    let l:i += 1
  endwhile

  if !l:dirvish_already_open
    35vsp +Dirvish
  endif
endfunction

function! s:dirvish_open() abort
  let l:line = getline('.')
  if l:line =~? '/$'
    call dirvish#open('edit', 0)
  else
    call <SID>dirvish_toggle()
    execute 'e '.l:line
  endif
endfunction

augroup dirvish_commands
  autocmd!
  autocmd FileType dirvish nnoremap <silent> <buffer> <C-r> :<C-u>Dirvish %<CR>
  autocmd FileType dirvish unmap <silent> <buffer> <CR>
  autocmd FileType dirvish nnoremap <silent> <buffer> <CR> :<C-u> call <SID>dirvish_open()<CR>
  autocmd FileType dirvish setlocal nonumber norelativenumber statusline=%F
  autocmd FileType dirvish silent! keeppatterns g@\v/\.[^\/]+/?$@d
  autocmd FileType dirvish execute ':sort r /[^\/]$/'
augroup END

autocmd FileType dirvish nnoremap <buffer> gh :let g:dirvish_mode = ':silent keeppatterns g@\v/\.[^\/]+/?$@d'<Bar>Dirvish %<CR>
autocmd FileType dirvish nnoremap <buffer> gH :let g:dirvish_mode = ''<Bar>Dirvish %<CR>
