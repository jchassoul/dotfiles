let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1

function! ToggleNetrw()
        let i = bufnr("$")
        let wasOpen = 0
        while (i >= 1)
            if (getbufvar(i, "&filetype") == "netrw")
                silent exe "bwipeout " . i
                let wasOpen = 1
            endif
            let i-=1
        endwhile
    if !wasOpen
        silent Lexplore
    endif
endfunction

"map <F3> :call ToggleNetrw() <CR>

let g:netrw_banner=0        " disable banner
let g:netrw_winsize = 20    " width in percent
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide='\(^\|\s\s\)\zs\.\S\+'

autocmd FileType netrw set nolist
