" Set <space> as the leader key
" See `:help mapleader`
let mapleader=' '
let maplocalleader = ' '


" [[ Setting Neovim default options ]]
" These are some of the options enabled by default in Neovim
" These are options believed by many Vim users to be essential.
" For more information, see `:h vim_diff.txt` in Neovim
filetype on
syntax on
set autoindent autoread background=dark
set backspace=indent,eol,start belloff=all
set display=lastline encoding=utf-8 hidden
set history=10000 incsearch
set nojoinspaces laststatus=2 ruler
set showcmd smarttab nostartofline
set switchbuf=uselast wildmenu "wildoptions=pum,tagfile

" [[ Settings other options ]]
" See `:help :set`
" NOTE: You can change these options as you wish!
"  For more options, you can see `:help option-list`

" Make line numbers default
set number
set relativenumber

" Enable mouse mode, can be useful for resizing splits for example!
set mouse=a

" Don't show the mode, since it's already in the status line
set noshowmode

" Enable break indent
set breakindent

" Fold using indent
set foldmethod=indent
set foldlevel=99


" Save undo history
set undodir=~/.local/state/vim/undo//
set undofile

" Case-insensitive searching UNLESS \C or capital in search
set ignorecase
set smartcase

" Keep signcolumn on by default
set signcolumn=yes

" Decrease update time
set updatetime=250

" Decrease mapped sequence wait time
" Displays vim-which-key sooner
set timeoutlen=300

" Configure how new splits should be opened
set splitright
set splitbelow

" Sets how Vim will display certain whitespace characters in the editor.
set list
set listchars=tab:»\ ,trail:·,nbsp:␣
" Use the following settings if you do not want unicode characters
"set listchars=tab:>\ ,trail:-,nbsp:+

" Show which line your cursor is on
set cursorline

" Minimal number of screen lines to keep above and below the cursor
set scrolloff=5

" if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
" instead raise a dialog asking if you wish to save the current file(s)
" See `:help 'confirm'`
set confirm

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
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
" Autoinsert paired delimiter
Plug 'Raimondi/delimitMate'
" Undotree
Plug 'mbbill/undotree'
" Expand region
Plug 'terryma/vim-expand-region'
" Move region
Plug 'matze/vim-move'
" Better yank/paste
Plug 'svermeulen/vim-yoink'
" Various small improvements
Plug 'girishji/vimbits'
" Highlight trailing whitespace
Plug 'ntpeters/vim-better-whitespace'

" -----
" Files
" -----
" File tree
Plug 'preservim/nerdtree'
" File explorer/editor
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
call plug#end()
