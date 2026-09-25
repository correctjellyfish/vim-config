" Set highlight on search, but clear on pressing <Esc> in normal mode
set hlsearch
nnoremap <Esc> :nohlsearch<CR>

" Exit terminal mode in the builtin terminal 
tnoremap <Esc><Esc> <C-\><C-n>

" Remap for dealing with word wrap
nnoremap <expr> <silent> k v:count == 0 ? 'gk' : 'k'
nnoremap <expr> <silent> j v:count == 0 ? 'gj' : 'j'

" Keybinds to make split navigation easier.
"  Use CTRL+<hjkl> to switch between windows
nnoremap <C-h> <C-w><C-h>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>

" Sneak Keybinds
map f <Plug>Sneak_f
map F <Plug>Sneak_F
map t <Plug>Sneak_t
map T <Plug>Sneak_T

" Quickfix
nnoremap <leader>q :copen<CR>

" Make
nnoremap <leader>m :make<CR>

" Configure vim-which-key
let g:which_key_fallback_to_native_key=1
call which_key#register('<Space>', "g:which_key_map")
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  '<Space>'<CR>
nnoremap <silent> g :<c-u>WhichKey  'g'<CR>
nnoremap <silent> ] :<c-u>WhichKey  ']'<CR>
nnoremap <silent> [ :<c-u>WhichKey  '['<CR>

" Document Prefixes
let g:which_key_map =  {}
let g:which_key_map.b = {
      \ 'name' : '+[B]uffer',
      \'d': ['bd', '[D]elete'],
      \'b': 'Previous [B]uffer',
      \'s': ['Buffer', '[S]earch'],
      \}
" Above doesn't work for this keymap for ~some~ reason
nnoremap <leader>bb :b#<CR>
let g:which_key_map.d = { 
      \'name' : '+[D]ebug',
      \ 'b': ['<Plug>VimspectorToggleBreakpoint','Toggle [B]reakpoint'],
      \ 'c': ['<Plug>VimspectorContinue','[C]ontinue/Start'],
      \ 'q': ['<Plug>VimspectorStop','[Q]uit'],
      \ 'r': ['<Plug>VimspectorRestart','[R]estart'],
      \ 'B': ['<Plug>VimspectorBreakpoints','Show [B]reakpoints'],
      \ 'f': ['<Plug>VimspectorAddFunctionBreakpoint','[F]unction Breakpoint'],
      \ 'C': ['<Plug>VimspectorRunToCursor','Run to [C]ursor'],
      \ 'n': ['<Plug>VimspectorJumpToNextBreakpoint','[N]ext Breakpoint'],
      \ 'p': ['<Plug>VimspectorJumpToPreviousBreakpoint','[P]revious Breakpoint'],
      \ 'i': ['<Plug>VimspectorBalloonEval','[I]nspect Value'],
      \}
let g:which_key_map.g = { 
      \'name' : '+[G]it',
      \ 'g': ['Git','[G]it (fugitive)'],
      \ 'b': ['Git blame','[B]lame'],
      \ 'd': ['Git difftool','[D]iff'],
      \ 'm': ['Git mergetool','[M]erge'],
      \ 'a': ['Gwrite','[A]dd'],
      \ 'T': ['GitGutterToggle','[T]oggle Gutter'],
      \ 's': ['GitGutterStageHunk','[S]tage hunk'],
      \ 'u': ['GitGutterUndoHunk','[U]ndo hunk'],
      \ 'p': ['GitGutterPreviewHunk','[P]review'],
      \}
let g:which_key_map['l'] = {
      \ 'name': '+[L]anguage',
      \ 'f': ['LspFormat','[F]ormat'],
      \ 'r': ['LspRename','[R]ename'],
      \ 'a': ['LspCodeAction','[A]ction'],
      \ 'R': ['LspPeekReferences','[R]eferences'],
      \ 'd': ['LspPeekDefinition','[D]efinition'],
      \ 'D': ['LspGotoDeclaration','[D]eclaration'],
      \ 's': ['LspDocumentSymbol','[S]ymbol'],
      \ 'p': ['MarkdownPreview','Markdown [P]review'],
      \}
let g:which_key_map.m = { 'name' : '[M]ake'}
let g:which_key_map.o = { 
      \'name' : '+[O]ther',
      \'w' : ['Goyo', 'Start [W]riting'],
      \'W' : ['Goyo!', 'Stop [W]riting'],
      \}
let g:which_key_map.p = { 'name' : '+[P]aste' }
let g:which_key_map.q = { 'name' : '+[Q]uickfix'}
let g:which_key_map['s'] = {
      \ 'name' : '+[S]earch',
      \ 'b':['Buffers', '[B]uffers'],
      \ 'f':['Files', '[F]iles'],
      \ 'g':['Rg', '[G]rep'],
      \ 'h':['Helptags', '[H]elp'],
      \ 'k':['Maps', '[K]eymaps'],
      \ 't':['Tags', '[T]ags'],
      \ '.':['History', 'Recent Files'],
      \ '/': ['BLines', 'Current File'],
      \}
let g:which_key_map.t = { 
      \'name' : '+[T]est/[T]ags' ,
      \ 'b': ['TagbarToggle', 'Tag [B]ar'],
      \ 't': ['TestNearest', '[T]est Nearest'],
      \ 'T': ['TestFile', '[T]est File'],
      \ 'a': ['TestSuite', 'Test [A]ll'],
      \ 'l': ['TestLast', 'Test [L]ast'],
      \ 'g': ['TestVisit', '[G]oto Last Test'],
      \}
let g:which_key_map.T = { 
      \'name' : '+[T]erminal',
      \ 'N': ['FloatermNew', '[N]ew'],
      \ 'T': ['FloatermToggle', '[T]oggle'],
      \ 'n': ['FloatermNext', '[N]ext'],
      \ 'p': ['FloatermPrev', '[P]revious'],
      \}
let g:which_key_map.u = { 'name' : '+[U]ndo-Tree' }
let g:which_key_map['w'] = {
      \ 'name' : '+[W]indows' ,
      \ 'w' : ['<C-W>w'     , 'other-window']          ,
      \ 'd' : ['<C-W>c'     , 'delete-window']         ,
      \ '-' : ['<C-W>s'     , 'split-window-below']    ,
      \ '|' : ['<C-W>v'     , 'split-window-right']    ,
      \ '2' : ['<C-W>v'     , 'layout-double-columns'] ,
      \ 'h' : ['<C-W>h'     , 'window-left']           ,
      \ 'j' : ['<C-W>j'     , 'window-below']          ,
      \ 'l' : ['<C-W>l'     , 'window-right']          ,
      \ 'k' : ['<C-W>k'     , 'window-up']             ,
      \ 'H' : ['<C-W>5<'    , 'expand-window-left']    ,
      \ 'J' : [':resize +5'  , 'expand-window-below']   ,
      \ 'L' : ['<C-W>5>'    , 'expand-window-right']   ,
      \ 'K' : [':resize -5'  , 'expand-window-up']      ,
      \ '=' : ['<C-W>='     , 'balance-window']        ,
      \ 's' : ['<C-W>s'     , 'split-window-below']    ,
      \ 'v' : ['<C-W>v'     , 'split-window-below']    ,
      \ '?' : ['Windows'    , 'fzf-window']            ,
      \ }

" Lsp Keybinds
" These keybindings are default in Neovim
nnoremap [d :LspDiag prev<CR>
nnoremap ]d :LspDiag next<CR>
" See `:help K` for why this keymap
nnoremap K :LspHover<CR>
nnoremap grn :LspRename<CR>
nnoremap gra :LspCodeAction<CR>
nnoremap grr :LspPeekReferences<CR>
nnoremap gri :LspGotoImpl<CR>
nnoremap gO :LspDocumentSymbol<CR>
nnoremap <C-s> :LspShowSignature<CR>
" Other useful functions
nnoremap grd :LspGotoDefinition<CR>
" In C, this would take you to the header file
nnoremap grD :LspGotoDeclaration<CR>
nnoremap grt :LspGotoTypeDef<CR>
nnoremap gW :LspSymbolSearch<CR>

" GitGutter Keybinds
let g:gitgutter_map_keys = 0
nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)

" Debug Keybinds
xmap <leader>di <Plug>VimspectorBalloonEval
" Running the debugger
nnoremap <down> <Plug>VimspectorStepOver
nnoremap <right> <Plug>VimspectorStepInto
nnoremap <up> <Plug>VimspectorStepOut
