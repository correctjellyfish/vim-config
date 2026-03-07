" Configure Vim-slime
let g:slime_target='tmux'
let g:slime_default_config = {"socket_name": get(split($TMUX, ","), 0), "target_pane": ":.2"}
let g:slime_bracketed_paste = 1

" Floating terminal
let g:floaterm_width = 0.8
let g:floaterm_height = 0.8
let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_next   = '<F9>'
let g:floaterm_keymap_toggle = '<C-\>'

nmap <leader>T = :FloatermNew<CR>
let g:which_key_map.T = '[T]erminal'

" Open vifm to edit file directories
command! Vifm FloatermNew vifm

" Create a keybind for the vifm
nmap <leader>F :Vifm<CR>
