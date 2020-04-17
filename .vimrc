" #### Colors ####

" colorscheme badwolf " Colorscheme to use
syntax enable       " Enable syntax processesing / highlighting

" #### Spaces & Tabs ####
filetype indent on

setlocal softtabstop=2   " Number of spaces in TAB when editing
setlocal tabstop=2
set softtabstop=2
set tabstop=2
set shiftwidth=2

set smartindent       " Enable Smart indent (works in c like files)
set expandtab       " TABs just translate to spaces now.

" #### Backspace ####
set backspace=indent,eol,start

" #### UI Config ####

set number          " Show line numbers
set showcmd         " Show the last command entered in the right of bottom bar
set cursorline      " Highlight the current line that the cursor is on.

set wildmenu        " Visual autocomplete for command menu
set lazyredraw      " Redraw only when we need to.
set showmatch       " Highlight matching [{()}]

" #### Searching ####

set incsearch       " Search as characters are entered
set hlsearch        " Highlight matches

" #### Persistent Undo ####
set undofile                " turn on the feature
set undodir=$HOME/.vim/undo " directory where the undo files will be stored

" #### Pathogen ####
execute pathogen#infect()

" #### Bindings ####

map <C-n> :NERDTreeToggle<CR>
map <C-p> :CtrlPMixed<CR>

nnoremap tj :tabp<CR>
nnoremap tk :tabn<CR>
nnoremap ta :tab all<CR>
nnoremap te :tabc<CR>
nnoremap tq :qa<CR>

nnoremap tf gg=G2<C-o>

vnoremap ti :norm i//<CR>
vnoremap tu :norm xx<CR>

" Moving lines
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

nnoremap tr :call JsBeautify()<cr>
autocmd FileType javascript nnoremap <buffer> tr :call JsBeautify()<cr>
autocmd FileType json nnoremap <buffer> tr :call JsonBeautify()<cr>
autocmd FileType jsx nnoremap <buffer> tr :call JsxBeautify()<cr>
autocmd FileType html nnoremap <buffer> tr :call HtmlBeautify()<cr>
autocmd FileType css nnoremap <buffer> tr :call CSSBeautify()<cr>

autocmd FileType javascript nnoremap <buffer> tl :call RangeJsBeautify()<cr>
autocmd FileType json nnoremap <buffer> tl :call RangeJsonBeautify()<cr>
autocmd FileType jsx nnoremap <buffer> tl :call RangeJsxBeautify()<cr>
autocmd FileType html nnoremap <buffer> tl :call RangeHtmlBeautify()<cr>
autocmd FileType css nnoremap <buffer> tl :call RangeCSSBeautify()<cr>

" VimCompleteMe
autocmd FileType vim let b:vcm_tab_complete = 'vim'
autocmd FileType typescript let b:vcm_tab_complete = 'typescript'
autocmd FileType sass let b:vcm_tab_complete = 'sass'
autocmd FileType javascript let b:vcm_tab_complete = 'javascript'
autocmd FileType css let b:vcm_tab_complete = 'css'
autocmd FileType html let b:vcm_tab_complete = 'html'
autocmd FileType json let b:vcm_tab_complete = 'json'

" #### NERDTree ####
let g:NERDTreeWinSize = 60
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
let NERDTreeShowHidden=1

" #### CtrlP ####
let g:ctrlp_custom_ignore = 'node_modules\|documentation\|DS_Store\|git\|.tmp\|dist'

" #### Ag ####
let g:ag_working_path_mode="r"
let g:ag_prg='ag -S --nocolor --nogroup --column --ignore node_modules --ignore-dir "dist" --ignore-dir "vendor" --ignore-dir "lib" --ignore-dir "documentation"'

" #### closetag ####
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.php,*.xml,*.htm"

" #### vim-gitgutter ####
if exists('&signcolumn')  " Vim 7.4.2201
  set signcolumn=yes
else
  let g:gitgutter_sign_column_always = 1
endif"

" #### typescript-vim ####
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

" #### tsuquyomi ####
let g:tsuquyomi_search_term_min_length = 3

" Vue-vim
let g:vue_disable_pre_processors=1
autocmd FileType vue syntax sync fromstart
