" let g:db_ui_use_nerd_fonts=1
" let g:db_ui_save_location = '~/.config/nvim/db_ui'
let g:db_ui_icons = {
    \ 'expanded': '󰙅',
    \ 'collapsed': '󰥝',
    \ 'saved_query': '',
    \ 'new_query': '󱘳',
    \ 'tables': '󰨖',
    \ 'buffers': '»',
    \ 'connection_ok': '󰪩',
    \ 'connection_error': '󱘵',
    \ }
let g:db_ui_save_location = '~/.local/share/db_ui'
" 禁用 dbout 缓冲区的折叠
autocmd FileType dbout setlocal nofoldenable

