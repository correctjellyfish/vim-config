" Install `vim-plug` plugin manager
"    See https://github.com/junegunn/vim-plug/ for more info
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Install plugins
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
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
" Autoinsert paired delimiter
Plug 'Raimondi/delimitMate'
" Movement
Plug 'justinmk/vim-sneak'
" Improved File Manager
Plug 'justinmk/vim-dirvish'
" File tree
Plug 'preservim/nerdtree'
" Cleanup trailing whitespace
Plug 'axelf4/vim-strip-trailing-whitespace'
" Undotree
Plug 'mbbill/undotree'
" Expand region
Plug 'terryma/vim-expand-region'
" Move region
Plug 'matze/vim-move'

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

" ---------
" Languages
" ---------
" Enable LSP
Plug 'prabirshrestha/vim-lsp'
" Install language servers and configure them for vim-lsp
Plug 'mattn/vim-lsp-settings'
" Autocompletion
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
" Autoformatting
Plug 'vim-autoformat/vim-autoformat'
" Testing
Plug 'vim-test/vim-test'


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
"  Git
" ----
" Adds git related signs to the gutter
Plug 'airblade/vim-gitgutter'
" Improved git integration
Plug 'tpope/vim-fugitive'
call plug#end()
