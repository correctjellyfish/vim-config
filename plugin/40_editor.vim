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
let g:which_key_map.s.g = '[S]earch by [G]rep'
nmap <leader>st :Tags<CR>
let g:which_key_map.s.t = '[S]earch [T]ags'
nmap <leader>s. :History<CR>
let g:which_key_map.s['.'] = '[S]earch Recent Files ("." for repeat)'
nmap <leader>sb :Buffers<CR>
let g:which_key_map.s.b = 'Find existing [B]uffers'
nmap <leader>/ :BLines<CR>
let g:which_key_map['/'] = '[/] Fuzzily search in current buffer'

" NERDTree config
nnoremap <C-t> :NERDTree<CR>
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif

" Vim-dir file explorer
nnoremap - :Dir<CR>

" Improved yank/paste
let g:which_key_map.p.n = '[N]ext'
let g:which_key_map.p.p = '[P]revious'
nmap <leader>pp <plug>(YoinkPostPasteSwapBack)
nmap <leader>pn <plug>(YoinkPostPasteSwapForward)

nmap p <plug>(YoinkPaste_p)
nmap P <plug>(YoinkPaste_P)

" Also replace the default gp with yoink paste so we can toggle paste in this case too
nmap gp <plug>(YoinkPaste_gp)
nmap gP <plug>(YoinkPaste_gP)

" Toggle whether pase if formatted
nmap <c-=> <plug>(YoinkPostPasteToggleFormat)

" Preserve position on yanking
nmap y <plug>(YoinkYankPreserveCursorPosition)
xmap y <plug>(YoinkYankPreserveCursorPosition)

" Strip whitespace
nnoremap <leader>ww :StripWhitespace<CR>
let g:which_key_map.w.w = 'Strip [W]hitespace'

" Some git commands
let g:gitgutter_map_keys = 0
" Fugitive maps
nnoremap <leader>gS :Git<CR>
nnoremap <leader>gb :Git blame<CR>
nnoremap <leader>gd :Git difftool<CR>
nnoremap <leader>gm :Git mergetool<CR>
nnoremap <leader>ga :Gwrite<CR>
let g:which_key_map.g.b = { 'name' : '[B]lame' }
let g:which_key_map.g.d = { 'name' : '[D]iff' }
let g:which_key_map.g.m = { 'name' : '[M]erge' }
let g:which_key_map.g.S = { 'name' : '[S]tatus' }
let g:which_key_map.g.a = { 'name' : '[A]dd' }
" Git gutter commands
nnoremap <leader>gT :GitGutterToggle<CR>
nnoremap <leader>gs :GitGutterStageHunk<CR>
nnoremap <leader>gu :GitGutterUndoHunk<CR>
nnoremap <leader>gp :GitGutterPreviewHunk<CR>
nnoremap ]c :GitGutterNextHunk<CR>
nnoremap [c :GitGutterPrevHunk<CR>
let g:which_key_map.g.T={'name': '[T]oggle Gutter'}
let g:which_key_map.g.s={'name': '[S]tage'}
let g:which_key_map.g.u={'name': '[U]ndo'}
let g:which_key_map.g.p={'name': '[P]review'}


" Allow repeated indent/unindent
vnoremap > >gv
vnoremap < <gv

" Quickly add blank lines
nnoremap [<space>  :<c-u>put! =repeat(nr2char(10), v:count1)<cr>'[
nnoremap ]<space>  :<c-u>put =repeat(nr2char(10), v:count1)<cr>

" Enable next_s from sneak
let g:sneak#s_next=1

" Tag generation
let g:gutentags_file_list_command = {
      \ 'markers': {
      \ '.git': 'git ls-files',
      \ '.hg': 'hg files',
      \ },
      \ }
