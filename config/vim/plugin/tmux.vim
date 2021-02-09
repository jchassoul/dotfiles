let g:tmux_navigator_no_mappings = 1

" Disable tmux navigator when zooming the Vim pane
let g:tmux_navigator_disable_when_zoomed = 1

nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>

"nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>

let g:slime_target = "tmux"

let g:slime_default_config = {"socket_name": "default", "target_pane": "{last}"}

let g:slime_dont_ask_default = 1
