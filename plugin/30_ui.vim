" Colorscheme
set termguicolors                   " Enable RGB colors
colorscheme catppuccin_mocha

" Tab bar from airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
nnoremap <S-h> :bprev<CR>
nnoremap <S-l> :bnext<CR>


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
let g:which_key_map.h = { 'name' : 'Git [H]unk' }
let g:which_key_map.g = { 'name' : '[G]it (fugitive)' }
let g:which_key_map.t = { 'name' : '[T]est/[T]ags' }
let g:which_key_map.T = { 'name' : '[T]erminal' }
let g:which_key_map.p = { 'name' : '[P]aste' }
let g:which_key_map.w = { 'name' : '[W]riting/[W]hitespace' }
let g:which_key_map.d = { 'name' : '[D]ebug' }
let g:which_key_map.m = { 'name' : '[M]acro' }
