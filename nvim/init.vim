call plug#begin()

" Color theme
" Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'morhetz/gruvbox'

" Auto brackets
Plug 'jiangmiao/auto-pairs'

" File explorer
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'matze/vim-move'
Plug 'yuttie/comfortable-motion.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdcommenter'

call plug#end()

" colorscheme onehalfdark
colorscheme gruvbox

" Basic configuration
set clipboard+=unnamedplus
set hidden
set number " Line numbers
set relativenumber
set autoindent " Auto identation
set ic " Ignore lower and uppercase on search
set mouse=a
set inccommand=split
set tabstop=2
set shiftwidth=2
set textwidth=0
set smartindent
set cindent
set expandtab
set smarttab
set scrolloff=3
set wrap
set noshowmode
set noshowcmd
set shortmess+=F
set cc=81
set laststatus=2
filetype indent on

set listchars=tab:\|·,trail:~,extends:>,precedes:<
set list

let g:netrw_banner=0

" coc config
let g:coc_global_extentions = [
	\ 'coc-snippets',
	\ 'coc-pairs',
	\ 'coc-tsserver',
	\ 'coc-eslint',
	\ 'coc-prettier',
	\ 'coc-json',
	\ ]

inoremap kj <esc>

command! -nargs=0 Prettier :CocCommand prettier.formatFile

set encoding=UTF-8
let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeIgnore = []
let NERDTreeStatusline = ''

let g:NERDTreeIndicatorMapCustom = {
	\ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?",
	\}

let mapleader= "\<space>"
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-b> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>


" Change font with scroll
let s:fontsize = 12
function! AdjustFontSize(amount)
	let s:fontsize = s:fontsize+a:amount
	:execute "GuiFont! Consolas:h" . s:fontsize
endfunction

noremap <C-ScrollWheelUp> :call AdjustFontSize(1)<CR>
noremap <C-ScrollWheelDown> :call AdjustFontSize(-1)<CR>
inoremap <C-ScrollWheelUp> :call AdjustFontSize(1)<CR>
inoremap <C-ScrollWheelDown> :call AdjustFontSize(-1)<CR>
