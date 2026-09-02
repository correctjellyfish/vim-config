" Colorscheme
set termguicolors                   " Enable RGB colors
colorscheme catppuccin_mocha

" Tab bar from airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
nnoremap <S-h> :bprev<CR>
nnoremap <S-l> :bnext<CR>
