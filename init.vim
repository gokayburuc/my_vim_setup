set number
set relativenumber

" MOUSE
set mouse=a

" INDENT
set autoindent
set smartindent

" TAB
set smarttab
set tabstop=4

" SHIFT
set shiftwidth=4

set noswapfile "disable creating swap file - dangerous

set encoding=utf8

syntax on "syntax higlighting on

" split scree
set splitbelow
set splitright

set cursorline
set wrap

set autowrite

"FILETYPE INDENT

filetype indent on
filetype plugin indent on

"TERM GUI COLORS 
set termguicolors

" ##############################################
" PLUGIN CONFIGURATIONS

call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'} "COC autocompletions
Plug 'vim-airline/vim-airline' " AIRLINE
Plug 'vim-airline/vim-airline-themes' "AIRLINE THEMES

Plug 'mzlogin/vim-markdown-toc' "MARKDONW TOC
Plug 'fladson/vim-kitty' "KITTY HIGLIGHT
Plug 'zeroc0d3lab/vim-devicons' "dev icons

Plug 'ryanoasis/vim-devicons' " developer icons for vim
Plug 'nanotech/jellybeans.vim' "

Plug 'tc50cal/vim-terminal' " Vim Terminal
Plug 'terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'mattn/emmet-vim' "HTML Emmet
" Plug 'dense-analysis/ale' "ALE code analyzer and fixer
Plug 'tell-k/vim-autopep8' " python autopep8
Plug 'mechatroner/rainbow_csv' "rainbow csv - csv colorize
Plug 'rust-lang/rust.vim' "rust language support
Plug 'heavenshell/vim-pydocstring' " python docstring
Plug 'flazz/vim-colorschemes' "vim colorschemes
Plug 'ghifarit53/tokyonight-vim' "tokyo night colorscheme 
" Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'fatih/vim-go' " vim go support 
Plug 'morhetz/gruvbox' " gruvbox theme 
Plug 'nyoom-engineering/oxocarbon.nvim' " IBM oxocarbon colorscheme 
Plug 'rebelot/kanagawa.nvim' 
Plug 'dracula/vim',{'as':'dracula'} 

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-surround' " Surrounding ysw)
Plug 'tpope/vim-commentary' " For Commenting gcc & gc
Plug 'tpope/vim-fugitive' "GIT EXTENSION

Plug 'jiangmiao/auto-pairs'

Plug 'junegunn/rainbow_parentheses.vim'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/vim-journal'
Plug 'junegunn/gv.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim' "FUZZY FILE FINDER
Plug 'junegunn/vim-github-dashboard' "GITHUB DASHBOARD

Plug 'todashuta/unite-transparency'
Plug 'shougo/unite.vim'
Plug 'leshill/vim-json' " json highlight 

Plug 'preservim/nerdcommenter' "nerd commenter - fast comment
Plug 'preservim/nerdtree' "NERDTREE
Plug 'preservim/tagbar' "TAGBAR AIRLINE EXTENSION

Plug 'ajmwagar/vim-deus' " deus colorscheme 
Plug 'tomasiser/vim-code-dark' "visual studio colorscheme
Plug 'doums/darcula' "darcula
Plug 'tpope/vim-dadbod' "database dashboard 
Plug 'kjwon15/vim-transparent' "REMOVE BACKGROUND 
Plug 'cespare/vim-toml'
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'rafamadriz/neon'  " neon colorscheme
Plug 'lourenci/github-colors' " github colorscheme 
Plug 'frazrepo/vim-rainbow'


call plug#end()

" ===========================================

colorscheme PerfectDark

"=======================================

" colorscheme gruvbox
" let g:gruvbox_bold=1 " BOLD 
" let g:gruvbox_italic=1 "italic
" let g:gruvbox_transparent_bg = 1 
" let g:gruvbox_termcolors=256
" let g:gruvbox_contrast='soft'

"==========================================================

 " colorscheme tokyonight
 " let g:tokyonight_style = 'storm' " available: night, storm
 " let g:tokyonight_enable_italic = 1
 " let g:tokyonight_enable_bold = 1
 " let tokyonight_transparent_background = 1 
 " let g:airline_theme = 'tokyonight'

 " =======================================

 " DRACULA SETUP 

"   colorscheme dracula
" 	let g:dracula_bold=1
" 	let g:dracula_italic=1
" 	let g:dracula_underline=1
" 	let g:dracula_undercurl=1
" 	let g:dracula_full_special_attrs_support=1

"====================================================
"
" set t_Co=256
" set termguicolors

" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" colorscheme deus
" let g:deus_termcolors=256

" =====================================================
" colorscheme codedark
" If you don't like many colors and prefer the conservative style of the standard Visual Studio
" let g:codedark_conservative=1
" Activates italicized comments (make sure your terminal supports italics)
" let g:codedark_italics=1
" Make the background transparent
" let g:codedark_transparent=1
" If you have vim-airline, you can also enable the provided theme
" let g:airline_theme = 'codedark'

" =======================================================
"
	"NERDTREE SETUPS

	autocmd VimEnter * NERDTree | wincmd p
	"
	nnoremap <C-t> :NERDTreeToggle<CR>

	" TAGBAR CONFIGURATIONS

	nmap <F8> :TagbarToggle<CR>

" ===============================================================

" DEVICONS CONFIGURATIONS

let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1

	" ############################################
	"
	" COC CONFIGURATIONS
	"
	nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

	" tab autocomplete
	inoremap <silent><expr> <TAB>
		  \ coc#pum#visible() ? coc#pum#next(1) :
		  \ CheckBackspace() ? "\<Tab>" :
		  \ coc#refresh()
	inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
	set signcolumn=yes

	" NVIM CTRL + SPACE AUTOCOMPLETE
	if has('nvim')
	  inoremap <silent><expr> <c-space> coc#refresh()
	else
	  inoremap <silent><expr> <c-@> coc#refresh()
	endif

	"disable warning on startup
	let g:coc_disable_startup_warning = 1

	" ###############################################
	"
	" ALE CONFIGURATIONS
	"
	" let g:ale_fix_on_save = 1
	" let g:ale_lint_on_save = 1
	" let g:ale_fixers = { '*': ['remove_trailing_lines', 'trim_whitespace'] }

	" ###############################################
	"
	" PRETTIER CONFIGURATIONS
	"
	command! -nargs=0 Prettier :CocCommand prettier.formatFile

	" ##############################################
	"
	" FZF CONFIGURATIONS
	"

	nnoremap <C-f> :Files <CR>

	" #################################################
	"
	"  AIRLINE CONFIGURATIONS 
	let g:airline_detect_modified = 1 
	let g:airline_detect_paste = 1 
	let g:airline_detect_crypt= 1
	let g:airline_stl_path_style='short'
	let g:airline_powerline_fonts = 1 
	let g:webdevicons_enable_airline_tabline = 1
	let g:webdevicons_enable_airline_statusline = 1

    " let g:airline_theme='gruvbox'

	" ############################################### 
	"
	" RUST-ANALYZER CONFIGURATIONS 

	let g:rustfmt_autosave = 1

	" ###############################################

"PYTHON - RUN KEY 
nmap <F9> <ESC> :w <CR> :!python3 %<CR>

let g:rainbow_active = 1
