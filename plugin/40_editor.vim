" Enable next_s from sneak
let g:sneak#s_next=1

" Vim-move config
let g:move_key_modifier_visualmode = 'S'

" Completion config
let g:asyncomplete_auto_completeopt = 0
set completeopt=menuone,noinsert,noselect,preview

" Debug
let g:vimspector_base_dir=expand( '$HOME/.vim/vimspector-config' )
let g:vimspector_install_gadgets = [ 'debugpy' ]

" Configure Vim-slime
let g:slime_target='tmux'
let g:slime_default_config = {"socket_name": get(split($TMUX, ","), 0), "target_pane": ":.2"}
let g:slime_bracketed_paste = 1

" Autoformatting
au BufWrite * :Autoformat
