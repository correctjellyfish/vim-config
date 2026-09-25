" #######
" Plugins
" #######

" Install `vim-plug` plugin manager
"    See https://github.com/junegunn/vim-plug/ for more info
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin()
" ------
" Editor
" ------
" Sensible defaults
Plug 'tpope/vim-sensible'
" Detect tabstop and shiftwidth automatically
Plug 'tpope/vim-sleuth'
" "gc" to comment visual regions/lines
Plug 'tpope/vim-commentary'
" Helpful plugin for working with paired delimeters
Plug 'tpope/vim-surround'
" Paired actions
Plug 'tpope/vim-unimpaired'
" Make repeat work with plugins
Plug 'tpope/vim-repeat'
" Readline bindings for vim
Plug 'tpope/vim-rsi'
" Fuzzy Finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Add multiple cursors for easy editing
" Keymaps
" Ctrl-N - Select works
" Ctrl-up/down - Create cursors vertically
" Shift-Arrow - Select one character
" n/N - Next/previous occurence
" [/] - Next/previous cursor
" q - Skip over
" Q - remove current
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
" Undotree
Plug 'mbbill/undotree'
" Expand region
" + - Expand
" _ - Shrink
Plug 'terryma/vim-expand-region'
" Move region
" S-h - Move left
" S-j - Move down
" S-k - Move up
" S-l - Move right
Plug 'matze/vim-move'
" Easy jumping to different locations on screen
Plug 'justinmk/vim-sneak'
" Better yank/paste
Plug 'svermeulen/vim-yoink'
" Highlight on yank
Plug 'machakann/vim-highlightedyank'
" Highlight trailing whitespace
Plug 'ntpeters/vim-better-whitespace'
" Autopair
Plug 'tmsvg/pear-tree'

" -----
" Files
" -----
" File tree
Plug 'preservim/nerdtree'
" File explorer/editor
" Keymaps
" Navigation:
" o - open
" s - open in split
" S - open in vertical split
" t - open in tab
" CTR-R - refresh
" ]] - jump over directories
" [[ - jump over directories reverse
" gj - open quick jump menu
" File Operations:
" i - preview
" x - toggle select
" X - toggle select all
" D/dd - delete
" R/rr - rename
" p - copy selected files into current directory
" P - move selected files into current directory
" A - open actions menu
" cc - Create File
" C - create directory
" Bookmarks/History:
" ~ - home directory
" g1 to g0 - open numbered bookmark
" Ctrl-A 1 to 0 - Set numbered bookmark
" gb - open bookmarks jump menu
" gh - open history jump menu
" Sort:
" g, - size
" g. - time
" g/ - name
" Filter/View:
" . - show/hide hidden
" > - Widen
" < - Shrink
Plug 'habamax/vim-dir'

" --
" UI
" --
" Useful plugin to show you pending keybinds.
Plug 'liuchengxu/vim-which-key'
" Colorscheme
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'chriskempson/base16-vim'
" Set airline as statusline
Plug 'vim-airline/vim-airline'
" For writing
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
" Start screen
Plug 'mhinz/vim-startify'
" Preview Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }

" ---------
" Languages
" ---------
" Enable LSP
Plug 'yegappan/lsp'
" Autoformatting
Plug 'vim-autoformat/vim-autoformat'
" Testing
Plug 'vim-test/vim-test'
" Debugging
Plug 'puremourning/vimspector'
" Typst
Plug 'kaarmu/typst.vim'

" --------
" Terminal
" --------
" Navigate Tmux
Plug 'christoomey/vim-tmux-navigator'
" Paste text from buffer into another target (shell/python/etc.)
Plug 'jpalardy/vim-slime'
" Floating terminal
Plug 'voldikss/vim-floaterm'

" ----
" Tags
" ----
Plug 'ludovicchabant/vim-gutentags'
Plug 'preservim/tagbar'

" ----
"  Git
" ----
" Adds git related signs to the gutter
Plug 'airblade/vim-gitgutter'
" Improved git integration
Plug 'tpope/vim-fugitive'
" Commit viewer
Plug 'junegunn/gv.vim'
call plug#end()
