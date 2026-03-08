let g:vimspector_base_dir=expand( '$HOME/.vim/vimspector-config' )
let g:vimspector_install_gadgets = [ 'debugpy' ]

" Keybinds
nmap <leader>db <Plug>VimspectorToggleBreakpoint
let g:which_key_map.d.b = 'Toggle [B]reakpoint'

nmap <leader>dc <Plug>VimspectorContinue
let g:which_key_map.d.c = '[C]ontinue/Start'

nmap <leader>dq <Plug>VimspectorStop
let g:which_key_map.d.q = '[S]top'

nmap <leader>dr <Plug>VimspectorRestart
let g:which_key_map.d.r = '[R]estart'

nmap <leader>dB <Plug>VimspectorBreakpoints
let g:which_key_map.d.B = 'Show [B]reakpoints'

nmap <leader>df <Plug>VimspectorAddFunctionBreakpoint
let g:which_key_map.d.f = '[F]unction Breakpoint'

nmap <leader>dC <Plug>VimspectorRunToCursor
let g:which_key_map.d.C = 'Run to [C]ursor'

nmap <leader>dn <Plug>VimspectorJumpToNextBreakpoint
let g:which_key_map.d.n = '[N]ext Breakpoint'

nmap <leader>dp <Plug>VimspectorJumpToPreviousBreakpoint
let g:which_key_map.d.p = '[P]revious Breakpoint'

nmap <leader>di <Plug>VimspectorBalloonEval
xmap <leader>di <Plug>VimspectorBalloonEval
let g:which_key_map.d.i = '[I]nspect Value'

" Running the debugger
nnoremap <down> <Plug>VimspectorStepOver
nnoremap <right> <Plug>VimspectorStepInto
nnoremap <up> <Plug>VimspectorStepOut
