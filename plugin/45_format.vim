" Setup autoformatting

" Definition for mdformat
let g:formatdef_mdformat = '"mdformat -"'
let g:formatters_markdown = ['mdformat']

let g:formatdef_typstyle = '"typstyle"'
let g:formatters_typst = ['typstyle']

" Autoformatting
au BufWrite * :Autoformat
