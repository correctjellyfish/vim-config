" Vim visual multi
let g:VM_maps = {}
let g:VM_maps['Find Under']         = '<C-a>'
let g:VM_maps['Find Subword Under'] = '<C-a>'

" Enable next_s from sneak
let g:sneak#s_next=1

" Undo-tree config
nnoremap <silent> <leader>u :UndotreeToggle<CR>

" Vim-move config
let g:move_key_modifier_visualmode = 'S'

" Improved yank/paste
nmap <C-p> <plug>(YoinkPostPasteSwapBack)
nmap <C-n> <plug>(YoinkPostPasteSwapForward)

nmap p <plug>(YoinkPaste_p)
nmap P <plug>(YoinkPaste_P)

" Also replace the default gp with yoink paste so we can toggle paste in this case too
nmap gp <plug>(YoinkPaste_gp)
nmap gP <plug>(YoinkPaste_gP)

" Toggle whether pase if formatted
nmap <c-=> <plug>(YoinkPostPasteToggleFormat)

" Preserve position on yanking
nmap y <plug>(YoinkYankPreserveCursorPosition)
xmap y <plug>(YoinkYankPreserveCursorPosition)

" Allow repeated indent/unindent
vnoremap > >gv
vnoremap < <gv

" Quickly add blank lines
nnoremap [<space>  :<c-u>put! =repeat(nr2char(10), v:count1)<cr>'[
nnoremap ]<space>  :<c-u>put =repeat(nr2char(10), v:count1)<cr>

" Strip whitespace
nnoremap <leader>ow :StripWhitespace<CR>
let g:which_key_map.o.w = 'Strip [W]hitespace'

" Configure completion
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <CR>    pumvisible() ? "\<C-y>" : "\<CR>""

let g:asyncomplete_auto_completeopt = 0
set completeopt=menuone,noinsert,noselect,preview

" Debug
let g:vimspector_base_dir=expand( '$HOME/.vim/vimspector-config' )
let g:vimspector_install_gadgets = [ 'debugpy' ]

" Configure Vim-slime
let g:slime_target='tmux'
let g:slime_default_config = {"socket_name": get(split($TMUX, ","), 0), "target_pane": ":.2"}
let g:slime_bracketed_paste = 1

" Autoformatting
au BufWrite * :Autoformat
