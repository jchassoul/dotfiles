augroup dirvish_config
      autocmd!
      autocmd FileType dirvish silent keeppatterns g@\v/\.[^\/]+/?$@d _
      autocmd FileType dirvish setlocal nonumber norelativenumber cc= statusline=%F
      autocmd FileType dirvish execute ':sort r /[^\/]$/'
augroup END
