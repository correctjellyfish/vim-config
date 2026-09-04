let lspOpts = #{autoHighlightDiags: v:true, aleSupport: v:true}
autocmd User LspSetup call LspOptionsSet(lspOpts)

let lspServers = []
if executable('clangd')
  call add(lspServers, #{
        \   name: 'clang',
        \   filetype: ['c', 'cpp'],
        \   path: exepath('clangd'),
        \   args: ['--background-index'],
        \ })
endif
if executable('ty')
  call add(lspServers,#{
        \   name: 'ty',
        \   filetype: 'python',
        \   path: exepath('ty'),
        \   args: ['server'],
        \   rootSearch: ['pyproject.toml', 'pixi.toml', '.venv/', '.git/'],
        \ })
endif
if executable('ruff')
  call add(lspServers,#{
        \   name: 'ruff',
        \   filetype: 'python',
        \   path: exepath('ruff'),
        \   args: ['server'],
        \   rootSearch: ['pyproject.toml', 'pixi.toml', '.venv/', '.git/'],
        \ })
endif
if executable('gopls')
  call add(lspServers,#{
        \    name: 'golang',
        \    filetype: ['go', 'gomod'],
        \    path: exepath('gopls'),
        \    args: ['serve'],
        \    syncInit: v:true
        \  })
endif
if executable('rust-analyzer')
  call add(lspServers,#{
        \    name: 'rustlang',
        \    filetype: ['rust'],
        \    path: exepath('rust-analyzer'),
        \    args: [],
        \    syncInit: v:true
        \ })
endif
if executable('harper-ls')
  call add(lspServers,#{
        \    name: 'harper',
        \    filetype: ['markdown', 'typst'],
        \    path: exepath('harper-ls'),
        \    args: ['--stdio'],
        \    syncInit: v:true
        \ })
endif
if executable('tinymist')
  call add(lspServers,#{
        \    name: 'tinymist',
        \    filetype: ['typst'],
        \    path: exepath('tinymist'),
        \    args: [],
        \    syncInit: v:true,
        \    rootSearch: ['.git/'],
        \ })
endif
if executable('marksman')
  call add(lspServers,#{ name: 'marksman', filetype: ['markdown'], path: exepath('marksman'), args: ['server'], syncInit: v:true })
endif


autocmd User LspSetup call LspAddServer(lspServers)

" Keybinds

" These keybindings are default in Neovim
nnoremap <buffer> [d :LspDiag prev <CR>
nnoremap <buffer> ]d :LspDiag next <CR>
" See `:help K` for why this keymap
nnoremap <buffer> K :LspHover <CR>
nnoremap <buffer> grn :LspRename <CR>
nnoremap <buffer> gra :LspCodeAction <CR>
nnoremap <buffer> grr :LspPeekReferences <CR>
nnoremap <buffer> gri :LspGotoImpl <CR>
nnoremap <buffer> gO :LspDocumentSymbol <CR>
nnoremap <buffer> <C-s> :LspShowSignature <CR>
" Other useful functions
nnoremap <buffer> grd :LspGotoDefinition <CR>
" In C, this would take you to the header file
nnoremap <buffer> grD :LspGotoDeclaration <CR>
nnoremap <buffer> grt :LspGotoTypeDef <CR>
nnoremap <buffer> gW :LspSymbolSearch <CR>
" Leader Maps
nnoremap <buffer> <leader>lf :LspFormat <CR>
nnoremap <buffer> <leader>lr :LspRename <CR>
nnoremap <buffer> <leader>la :LspCodeAction <CR>
nnoremap <buffer> <leader>lR :LspPeekReferences <CR>
nnoremap <buffer> <leader>ld :LspGotoDefinition <CR>
nnoremap <buffer> <leader>ls :LspDocumentSymbol <CR>
let g:which_key_map.l.f = '[F]ormat'
let g:which_key_map.l.r = '[R]ename'
let g:which_key_map.l.a = '[A]ction'
let g:which_key_map.l.R = '[R]eferences'
let g:which_key_map.l.d = '[D]efinition'
let g:which_key_map.l.s = '[S]ymbol'

" ALE
" Format on save
let g:ale_fix_on_save = 1
let g:ale_fixers = {
      \   '*': ['remove_trailing_lines'],
      \}
