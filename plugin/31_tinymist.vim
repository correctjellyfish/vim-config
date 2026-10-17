vim9script

import autoload 'lsp/lsp.vim'

def g:TinymistPinMain()
  var s = lsp.Server()
  if s->empty()
    return
  endif

  s.rpc('workspace/executeCommand', {command: 'tinymist.pinMain', arguments: [expand('%:p')]})
enddef

def g:TinymistUnPinMain()
  var s = lsp.Server()
  if s->empty()
    return
  endif

  s.rpc('workspace/executeCommand', {command: 'tinymist.pinMain', arguments: [null]})
enddef

nnoremap <leader>lP :call g:TinymistPinMain()<CR>
nnoremap <leader>lU :call g:TinymistUnPinMain()<CR>
