" Setup autoformatting

" Definition for mdformat
let g:formatdef_mdformat = '"mdformat -"'
let g:formatters_markdown = ['mdformat']

" Autoformatting
au BufWrite * :Autoformat
