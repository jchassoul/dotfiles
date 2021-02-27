let g:deoplete#enable_at_startup = 1

" Maximum candidate window width
call deoplete#custom#option('max_menu_width', 80)

" Minimum character length needed to activate auto-completion.
call deoplete#custom#option('min_pattern_length', 1)

" use fuzzy matcher
call deoplete#custom#source('_', 'matchers', ['matcher_full_fuzzy'])

" Whether to disable completion for certain syntax
call deoplete#custom#source('_', {
            \ 'filetype': ['python'],
            \ 'disabled_syntaxes': ['Comment']
            \ })

" Ignore certain sources, because they only cause nosie most of the time
call deoplete#custom#option('ignore_sources', {
            \ '_': ['around', 'buffer']
            \ })

" Candidate list item number limit
call deoplete#custom#option('max_list', 15)

" The number of processes used for the deoplete parallel feature.
call deoplete#custom#option('num_processes', 4)

" The delay for completion after input, measured in milliseconds.
call deoplete#custom#option('auto_complete_delay', 100)

" lower case can also match upper case (upper case are hard to type!)
call deoplete#custom#option({'camel_case': v:true,})
