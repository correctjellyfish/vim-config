" Autoformatting
au BufWrite * :Autoformat

" Configure completion
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <CR>    pumvisible() ? asyncomplete#close_popup() : "\<CR>""

let g:asyncomplete_auto_completeopt = 0
set completeopt=menuone,noinsert,noselect,preview

nnoremap <leader>tb :TagbarToggle<CR>
let g:which_key_map.t.b = 'Tab [B]ar'
