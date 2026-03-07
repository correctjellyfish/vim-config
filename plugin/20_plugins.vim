" [[ Install `vim-plug` plugin manager ]]
"    See https://github.com/junegunn/vim-plug/ for more info
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" [[ Install plugins ]]
"  To check the current status of your plugins, run
"    :PlugStatus
"
"  To update plugins you can run
"    :PlugUpdate
"
" Note: Here is where you install your plugins.
call plug#begin()
" Sensible defaults
Plug 'tpope/vim-sensible'

" Detect tabstop and shiftwidth automatically
Plug 'tpope/vim-sleuth'

" "gc" to comment visual regions/lines
Plug 'tpope/vim-commentary'

" Adds git related signs to the gutter
Plug 'airblade/vim-gitgutter'

" Improved git integration
Plug 'tpope/vim-fugitive'

" Useful plugin to show you pending keybinds.
Plug 'liuchengxu/vim-which-key'

" Fuzzy Finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Enable LSP
Plug 'prabirshrestha/vim-lsp'
" Install language servers and configure them for vim-lsp
Plug 'mattn/vim-lsp-settings'

" Autocompletion
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

" Colorscheme
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'chriskempson/base16-vim'

" Set airline as statusline
Plug 'vim-airline/vim-airline'

" Add multiple cursors for easy editing
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" Helpful plugin for working with paired delimeters
Plug 'tpope/vim-surround'

" Autoinsert paired delimiter
Plug 'Raimondi/delimitMate'

" Movement
Plug 'justinmk/vim-sneak'

" Improved directory movement
Plug 'tpope/vim-vinegar'

" Autoformatting
Plug 'vim-autoformat/vim-autoformat'

" Cleanup trailing whitespace
Plug 'axelf4/vim-strip-trailing-whitespace'

" Paired actions
Plug 'tpope/vim-unimpaired'

" Make repeat work with plugins
Plug 'tpope/vim-repeat'

" Navigate Tmux
Plug 'christoomey/vim-tmux-navigator'

" Paste text from buffer into another target (shell/python/etc.)
Plug 'jpalardy/vim-slime'

" Readline bindings for vim
Plug 'tpope/vim-rsi'

" File tree
Plug 'preservim/nerdtree'

" Testing
Plug 'vim-test/vim-test'

" Undotree
Plug 'mbbill/undotree'

" For writing
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

" Expand region
Plug 'terryma/vim-expand-region'

" Move region
Plug 'matze/vim-move'

" Linting
" Plug 'dense-analysis/ale'
call plug#end()
