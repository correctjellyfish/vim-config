" Undo-tree config
nnoremap <silent> <leader>u :UndotreeToggle<CR>

" Vim-move config
let g:move_key_modifier_visualmode = 'S'

" Fuzzy Finder
nmap <leader>sh :Helptags<CR>
let g:which_key_map.s.h = '[S]earch [H]elp'
nmap <leader>sk :Maps<CR>
let g:which_key_map.s.k = '[S]earch [K]eymaps'
nmap <leader>sf :Files<CR>
let g:which_key_map.s.f = '[S]earch [F]iles'
nmap <leader>sg :Rg<CR>
let g:which_key_map.s.t = '[S]earch [T]ags'
nmap <leader>sg :Tags<CR>
let g:which_key_map.s.g = '[S]earch by [G]rep'
nmap <leader>s. :History<CR>
let g:which_key_map.s['.'] = '[S]earch Recent Files ("." for repeat)'
nmap <leader><leader> :Buffers<CR>
let g:which_key_map[' '] = '[ ] Find existing buffers'
nmap <leader>/ :BLines<CR>
let g:which_key_map['/'] = '[/] Fuzzily search in current buffer'

" NERDTree config
nnoremap <C-t> :NERDTree<CR>
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif

" Vifm config
nnoremap - :EditVifm<CR>
nmap <leader>vv :VsplitVifm<CR>
let g:which_key_map.v.v = '[V]ertical split'
nmap <leader>vp :PeditVifm<CR>
let g:which_key_map.v.p = '[P]review window'
nmap <leader>vd :DiffVifm<CR>
let g:which_key_map.v.d = '[D]iff'
nmap <leader>vt :TabVifm<CR>
let g:which_key_map.v.t = '[T]ab'
