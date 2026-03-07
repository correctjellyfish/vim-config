"
" =====================================================================
" ========                                    .-----.          ========
" ========         .----------------------.   | === |          ========
" ========         |.-""""""""""""""""""-.|   |-----|          ========
" ========         ||                    ||   | === |          ========
" ========         ||   KICKSTART.VIM    ||   |-----|          ========
" ========         ||                    ||   | === |          ========
" ========         ||                    ||   |-----|          ========
" ========         ||:!vimtutor          ||   |:::::|          ========
" ========         |'-..................-'|   |____o|          ========
" ========         `"")----------------(""`   ___________      ========
" ========        /::::::::::|  |::::::::::\  \ no mouse \     ========
" ========       /:::========|  |==hjkl==:::\  \ required \    ========
" ========      '""""""""""""'  '""""""""""""'  '""""""""""'   ========
" ========                                                     ========
" =====================================================================
"
" Kickstart.vim is a starting point for your Vim configuration,
" heavily inspired by Kickstart.nvim.
"
" If you are using Neovim, you should use Kickstart.nvim instead:
" https://github.com/nvim-lua/kickstart.nvim
" (use `gx` keybinding to open the link)
"
" If you have any question while reading the .vimrc,
" you should use Vim's built-in help, triggered by `:help X`.
" We also provide a keymap "<space>sh" [s]earch [h]elp documentation.
"


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
" You can also add relative line numbers, to help with jumping.
"  Experiment for yourself to see if you like it!
"set relativenumber

" Enable mouse mode, can be useful for resizing splits for example!
set mouse=a

" Don't show the mode, since it's already in the status line
set noshowmode

" Sync clipboard between OS and Vim.
"  Remove this option if you want your OS clipboard to remain independent.
"  See `:help 'clipboard'`
set clipboard=unnamedplus

" Enable break indent
set breakindent

" Fold using indent
set foldmethod=indent


" Save undo history
"  By default, undo files (.file.txt.un~) are saved in the current directory.
"  This makes the file system very messy, so undofile is disabled by default.
"
"  If would like to enable undofile, I recommend you to change undodir:
"  1. Create the undo directory: `:! mkdir -p ~/.local/state/vim/undo`
"  2. Uncomment the following line starting with "set undodir" and save the file
"  3. Source the .vimrc: `:source ~/.vimrc`
"  4. Now undo history will persist between Vim sessions
"
"  NOTE: See `:help undofile` and `:help undodir` for more information
"    You may change the undodir to another directory you prefer
"set undodir=~/.local/state/vim/undo//
"set undofile

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
set scrolloff=10

" if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
" instead raise a dialog asking if you wish to save the current file(s)
" See `:help 'confirm'`
set confirm


" [[ Basic Keymaps ]]

" Set highlight on search, but clear on pressing <Esc> in normal mode
set hlsearch
nnoremap <Esc> :nohlsearch<CR>

" Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
" for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
" is not what someone will guess without a bit more experience.
"
" NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
" or just use <C-\><C-n> to exit terminal mode
tnoremap <Esc><Esc> <C-\><C-n>

" Remap for dealing with word wrap
nnoremap <expr> <silent> k v:count == 0 ? 'gk' : 'k'
nnoremap <expr> <silent> j v:count == 0 ? 'gj' : 'j'

" TIP: Disable arrow keys in normal mode
nnoremap <left> :echo "Use h to move!!"<CR>
nnoremap <right> :echo "Use l to move!!"<CR>
nnoremap <up> :echo "Use k to move!!"<CR>
nnoremap <down> :echo "Use j to move!!"<CR>

" Keybinds to make split navigation easier.
"  Use CTRL+<hjkl> to switch between windows
"
"  See `:help wincmd` for a list of all window commands
nnoremap <C-h> <C-w><C-h>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>


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
call plug#end()


" [[ Configure plugins ]]
" Set colorscheme
set termguicolors                   " Enable RGB colors
colorscheme catppuccin_mocha

" Configure Vim-slime
let g:slime_target="tmux"
let g:slime_default_config = {"socket_name": get(split($TMUX, ","), 0), "target_pane": ":.2"}
let g:slime_bracketed_paste = 1

" Bindings for testing
nmap <silent> <leader>tt :TestNearest<CR>
nmap <silent> <leader>tT :TestFile<CR>
nmap <silent> <leader>ta :TestSuite<CR>
nmap <silent> <leader>tl :TestLast<CR>
nmap <silent> <leader>tg :TestVisit<CR>

" Undo-tree config
nnoremap <silent> <leader>u :UndotreeToggle<CR>

" Goyo setup
nmap <silent> <leader>ws :Goyo<CR>
nmap <silent> <leader>we :Goyo!<CR>
" Run on entering Goyo
function! s:goyo_enter()
  if executable('tmux') && strlen($TMUX)
    silent !tmux set status off
    silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  endif
  set noshowmode
  set noshowcmd
  set scrolloff=999
  Limelight
  colorscheme base16-grayscale-light
endfunction

function! s:goyo_leave()
  if executable('tmux') && strlen($TMUX)
    silent !tmux set status on
    silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  endif
  set showmode
  set showcmd
  set scrolloff=5
  Limelight!
  colorscheme catppuccin_mocha
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

" NERDTree config
nnoremap <C-t> :NERDTree<CR>
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif

" [[ Configure vim-which-key ]]
let g:which_key_fallback_to_native_key=1
call which_key#register('<Space>', "g:which_key_map")
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  '<Space>'<CR>
nnoremap <silent> g :<c-u>WhichKey  'g'<CR>
nnoremap <silent> ] :<c-u>WhichKey  ']'<CR>
nnoremap <silent> [ :<c-u>WhichKey  '['<CR>

" Document existing key chains
let g:which_key_map =  {}
let g:which_key_map.s = { 'name' : '[S]earch' }
let g:which_key_map.h = { 'name' : 'Git [H]unk' }
let g:which_key_map.t = { 'name' : '[T]est' }

" Autoformatting
au BufWrite * :Autoformat

" [[ Configure fzf.vim ]]
" See `:help fzf-vim`

nmap <leader>sh :Helptags<CR>
let g:which_key_map.s.h = '[S]earch [H]elp'
nmap <leader>sk :Maps<CR>
let g:which_key_map.s.k = '[S]earch [K]eymaps'
nmap <leader>sf :Files<CR>
let g:which_key_map.s.f = '[S]earch [F]iles'
nmap <leader>sg :Rg<CR>
let g:which_key_map.s.g = '[S]earch by [G]rep'
nmap <leader>s. :History<CR>
let g:which_key_map.s['.'] = '[S]earch Recent Files ("." for repeat)'
nmap <leader><leader> :Buffers<CR>
let g:which_key_map[' '] = '[ ] Find existing buffers'

nmap <leader>/ :BLines<CR>
let g:which_key_map['/'] = '[/] Fuzzily search in current buffer'


" [[ Configure LSP ]]
" NOTE: Install new language server using `:LspInstallServer` in the filetype
" you are trying to install LSP for.
" For example, if you want LSP server for C/C++, type
" `:LspInstallServer clangd` in a C/C++ buffer.

" Performance related settings, requires Vim 8.2+
let g:lsp_use_native_client = 1
let g:lsp_semantic_enabled = 1

function! s:on_lsp_buffer_enabled() abort
  setlocal omnifunc=lsp#complete
  if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif

  " Keymaps
  " These keybindings are default in Neovim
  nnoremap <buffer> [d <plug>(lsp-previous-diagnostic)
  nnoremap <buffer> ]d <plug>(lsp-next-diagnostic)
  " See `:help K` for why this keymap
  nnoremap <buffer> K <plug>(lsp-hover)
  nnoremap <buffer> grn <plug>(lsp-rename)
  nnoremap <buffer> gra <plug>(lsp-code-action-float)
  nnoremap <buffer> grr <plug>(lsp-references)
  nnoremap <buffer> gri <plug>(lsp-implementation)
  nnoremap <buffer> gO <plug>(lsp-document-symbol-search)
  nnoremap <buffer> <C-s> <plug>(lsp-signature-help)

  " Other useful functions
  nnoremap <buffer> grd <plug>(lsp-definition)
  " In C, this would take you to the header file
  nnoremap <buffer> grD <plug>(lsp-declaration)
  nnoremap <buffer> grt <plug>(lsp-peek-type-definition)
  nnoremap <buffer> gW <plug>(lsp-workspace-symbol-search)

  " Formatting
  let g:lsp_format_sync_timeout = 1000
  nnoremap <buffer> <leader>f <plug>(lsp-document-format)
  let g:which_key_map.f = '[F]ormat buffer'
endfunction

augroup lsp_install
  au!
  " call s:on_lsp_buffer_enabled only for languages that has the server registered.
  autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END


" [[ Configure completion ]]
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <CR>    pumvisible() ? asyncomplete#close_popup() : "\<CR>""

let g:asyncomplete_auto_completeopt = 0
set completeopt=menuone,noinsert,noselect,preview


" The line beneath this is called `modeline`. See `:help modeline`
" vim: ts=2 sts=2 sw=2 et
