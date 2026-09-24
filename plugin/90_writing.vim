" Goyo setup
nmap <silent> <leader>os :Goyo<CR>
nmap <silent> <leader>oe :Goyo!<CR>
let g:which_key_map.o.s = '[S]tart writing'
let g:which_key_map.o.e = '[E]nd writing'
" Run on entering Goyo
function! s:goyo_enter()
  if executable('tmux') && strlen($TMUX)
    silent !tmux set status off
    silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  endif
  set noshowmode
  set noshowcmd
  set scrolloff=999
  Limelight
  colorscheme base16-grayscale-light
  ALEDisable
endfunction

function! s:goyo_leave()
  if executable('tmux') && strlen($TMUX)
    silent !tmux set status on
    silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  endif
  set showmode
  set showcmd
  set scrolloff=5
  Limelight!
  colorscheme catppuccin_mocha
  ALEEnable
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
