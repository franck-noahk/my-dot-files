"Turning on syntax for vim
syntax on
set autoindent
set nowrap
set scrolloff=200
"turning on numbers and relative nubmers at the same time
set nu!
set rnu!
set wrap
set linebreak
set nolist  " list disables linebreak
""my default color schemea
colorscheme elflord 		"slate  elflord"
"setting up vim to work with python
set t_co=78
set tabstop=4
set smartindent
"
""My Abreviations

	"creates main method for c files 
	ab cMain void main(void)
	"
		"very basic for loop creation for all languages
		ab forl for (int i = 0; i < ; i++) {<esc>7hi
	"
	"		"Creates the standard head for c files that We used in
	"		calss
	"		ab chead #define _CRT_SECURE_NO_WARNINGS <CR>#include
	"		<stdio.h><CR>#include
	"		<time.h><CR>#include<math.h><CR>#include
	"		<stdlib.h><CR><CR>c
	"
	"
	"		ab assembleH .globval main<CR>.data<CR><CR><CR>.align
	"		2<CR>.text<CR>main:<CR><CR><CR>end:<CR>mov r7,
	"		#1<CR>swi 0<UP><UP><UP><UP>
	"
"auto completes my cases to make sure that every opener has a closer
ab ( (  )<esc>2hi
ab [ [  ]<esc>2hi
ab { {<CR><CR><CR>}<UP><UP><TAB>
	"
	"				"Auto complete for the html code
	"				ab <body>
	"				<body><CR><CR><CR></body><UP><UP>
	"				ab <head>
	"				<head><CR><CR><CR></head><UP><UP>
	"
	"				"-------------------------------------------------------------------------------
	"				"Syntastic help
	"
"----------------------------------------------------
"			Vundle installer  by default
"----------------------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')


" let Vundle manage Vundle, required
Plugin 'itchyny/vim-gitbranch'
Plugin 'itchyny/lightline.vim'
Plugin 'frazrepo/vim-rainbow'
Plugin 'VundleVim/Vundle.vim'
Plugin 'Dimercel/todo-vim'
Plugin 'vimwiki/vimwiki'
Plugin 'airblade/vim-gitgutter'
Plugin 'wakatime/vim-wakatime'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)

"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"----------------------------------------------------------------
"				Configuration for vim plugins
"----------------------------------------------------------------
au FileType c,cpp,objc,objcpp,dart,js,go, call rainbow#load()
nmap <F5> :TODOToggle<CR>
set laststatus=2
set noshowmode
let g:lightline = {
						\ 'colorscheme': 'wombat',
						\ 'active': {
						\ 'left': [ [ 'mode', 'paste' ],
						\ [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
						\ },
						\ 'component_function': {
						\ 'gitbranch': 'FugitiveHead'
						\ },
						\ }

