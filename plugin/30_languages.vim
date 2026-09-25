
" #############
" ### Tags ####
" #############
" Tag generation
" Use vcs to list files to generate tags for 
let g:gutentags_file_list_command = {
      \ 'markers': {
      \ '.git': 'git ls-files',
      \ '.hg': 'hg files',
      \ },
      \ }
let g:gutentags_ctags_exclude = ['.venv', '.pixi', '.tox']

" ############
" ### LSP ####
" ############
let lspOpts = #{
      \autoHighlightDiags: v:true,
      \showDiagWithVirtualText: v:true,
      \diagVirtualTextAlign: "after",
      \diagVirtualTextWrap: "truncate"
      \}
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
        \    rootSearch: ['go.mod'],
        \    syncInit: v:true
        \  })
endif
if executable('rust-analyzer')
  call add(lspServers,#{
        \    name: 'rustlang',
        \    filetype: ['rust'],
        \    path: exepath('rust-analyzer'),
        \    rootSearch: ['cargo.toml'],
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
if executable('zls')
  call add(lspServers,#{
        \    name: 'zls',
        \    filetype: ['zig'],
        \    path: exepath('zls'),
        \    rootSearch: ['build.zig'],
        \    args: [],
        \    syncInit: v:true
        \ })
endif
if executable('marksman')
  call add(lspServers,#{ name: 'marksman', filetype: ['markdown'], path: exepath('marksman'), args: ['server'], syncInit: v:true })
endif


autocmd User LspSetup call LspAddServer(lspServers)

" ###############
" ### Format ####
" ###############
" Definition for mdformat
let g:formatdef_mdformat = '"mdformat -"'
let g:formatters_markdown = ['mdformat']

let g:formatdef_typstyle = '"typstyle"'
let g:formatters_typst = ['typstyle']
