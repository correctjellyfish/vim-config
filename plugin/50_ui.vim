" Colorscheme
set termguicolors                   " Enable RGB colors
colorscheme catppuccin_mocha

" Tab bar from airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
nnoremap <S-h> :bprev<CR>
nnoremap <S-l> :bnext<CR>

" NERDTree config
nnoremap <C-t> :NERDTree<CR>
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif

" Vim-dir file explorer
nnoremap - :Dir<CR>

" Floating terminal
let g:floaterm_width = 0.8
let g:floaterm_height = 0.8
let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_next   = '<F9>'
let g:floaterm_keymap_toggle = '<C-\>'
" If fish is available, use it as the shell
if executable('fish')
  let g:floaterm_shell = 'fish'
endif

" Goyo setup (For Writing)
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
