" NOTE: Install new language server using `:LspInstallServer` in the filetype
" you are trying to install LSP for.
" For example, if you want LSP server for C/C++, type
" `:LspInstallServer clangd` in a C/C++ buffer.
let g:lsp_settings_filetype_python = ['ty', 'ruff']

" Performance related settings, requires Vim 8.2+
let g:lsp_use_native_client = 1
let g:lsp_semantic_enabled = 1

function! s:on_lsp_buffer_enabled() abort
  setlocal omnifunc=lsp#complete
  if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif

  " Keymaps
  " These keybindings are default in Neovim
  nnoremap <buffer> [d <plug>(lsp-previous-diagnostic)
  nnoremap <buffer> ]d <plug>(lsp-next-diagnostic)
  " See `:help K` for why this keymap
  nnoremap <buffer> K <plug>(lsp-hover)
  nnoremap <buffer> grn <plug>(lsp-rename)
  nnoremap <buffer> gra <plug>(lsp-code-action-float)
  nnoremap <buffer> grr <plug>(lsp-references)
  nnoremap <buffer> gri <plug>(lsp-implementation)
  nnoremap <buffer> gO <plug>(lsp-document-symbol-search)
  nnoremap <buffer> <C-s> <plug>(lsp-signature-help)

  " Other useful functions
  nnoremap <buffer> grd <plug>(lsp-definition)
  " In C, this would take you to the header file
  nnoremap <buffer> grD <plug>(lsp-declaration)
  nnoremap <buffer> grt <plug>(lsp-peek-type-definition)
  nnoremap <buffer> gW <plug>(lsp-workspace-symbol-search)

  " Formatting
  let g:lsp_format_sync_timeout = 1000
  nnoremap <buffer> <leader>f <plug>(lsp-document-format)
  let g:which_key_map.f = '[F]ormat buffer'
endfunction

augroup lsp_install
  au!
  " call s:on_lsp_buffer_enabled only for languages that has the server registered.
  autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END
