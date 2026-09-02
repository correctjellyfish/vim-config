" Set highlight on search, but clear on pressing <Esc> in normal mode
set hlsearch
nnoremap <Esc> :nohlsearch<CR>

" Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
" for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
" is not what someone will guess without a bit more experience.
"
" NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
" or just use <C-\><C-n> to exit terminal mode
tnoremap <Esc><Esc> <C-\><C-n>

" Remap for dealing with word wrap
nnoremap <expr> <silent> k v:count == 0 ? 'gk' : 'k'
nnoremap <expr> <silent> j v:count == 0 ? 'gj' : 'j'

" Keybinds to make split navigation easier.
"  Use CTRL+<hjkl> to switch between windows
"
"  See `:help wincmd` for a list of all window commands
nnoremap <C-h> <C-w><C-h>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>

" Sneak Keybinds
map f <Plug>Sneak_f
map F <Plug>Sneak_F
map t <Plug>Sneak_t
map T <Plug>Sneak_T

" Configure vim-which-key
let g:which_key_fallback_to_native_key=1
call which_key#register('<Space>', "g:which_key_map")
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  '<Space>'<CR>
nnoremap <silent> g :<c-u>WhichKey  'g'<CR>
nnoremap <silent> ] :<c-u>WhichKey  ']'<CR>
nnoremap <silent> [ :<c-u>WhichKey  '['<CR>


" Document existing key chains
let g:which_key_map =  {}
let g:which_key_map.s = { 'name' : '[S]earch' }
let g:which_key_map.b = { 'name' : '[B]uffer' }
let g:which_key_map.h = { 'name' : 'Git [H]unk' }
let g:which_key_map.g = { 'name' : '[G]it (fugitive)' }
let g:which_key_map.t = { 'name' : '[T]est/[T]ags' }
let g:which_key_map.T = { 'name' : '[T]erminal' }
let g:which_key_map.p = { 'name' : '[P]aste' }
let g:which_key_map.w = { 'name' : '[W]riting/[W]hitespace' }
let g:which_key_map.d = { 'name' : '[D]ebug' }
let g:which_key_map.m = { 'name' : '[M]acro' }
let g:which_key_map.l = { 'name' : '[L]anguage'}
