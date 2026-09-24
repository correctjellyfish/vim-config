" Strip whitespace
nnoremap <leader>ow :StripWhitespace<CR>
let g:which_key_map.o.w = 'Strip [W]hitespace'

" Definition for mdformat
let g:formatdef_mdformat = '"mdformat -"'
let g:formatters_markdown = ['mdformat']

let g:formatdef_typstyle = '"typstyle"'
let g:formatters_typst = ['typstyle']

" Autoformatting
au BufWrite * :Autoformat
