"Turning on syntax for vim
syntax on
set autoindent
"set nowrap
set scrolloff=200
"turning on numbers and relative nubmers at the same time
set nu!
set rnu!
set wrap
set linebreak
set nolist  " list disables linebreak
"my default color schemea
colorscheme elflord 		"slate  elflord"
"setting up vim to work with python
set t_co=78
set tabstop=4
set smartindent

"My Abreviations

	"creates main method for c files 
ab cMain void main(void)

	"very basic for loop creation for all languages
ab forl for (int i = 0; i < ; i++) {<esc>7hi

	"Creates the standard head for c files that We used in calss
ab chead #define _CRT_SECURE_NO_WARNINGS <CR>#include <stdio.h><CR>#include <time.h><CR>#include<math.h><CR>#include <stdlib.h><CR><CR>c


ab assembleH .globval main<CR>.data<CR><CR><CR>.align 2<CR>.text<CR>main:<CR><CR><CR>end:<CR>mov r7, #1<CR>swi 0<UP><UP><UP><UP>

	"auto completes my cases to make sure that every opener has a closer
ab ( (  )<esc>2hi
ab [ [  ]<esc>2hi
ab { {<CR><CR><CR>}<UP><UP><TAB>

	"Auto complete for the html code
ab <body> <body><CR><CR><CR></body><UP><UP>
ab <head> <head><CR><CR><CR></head><UP><UP>

"-------------------------------------------------------------------------------
call plug#begin('~/vim-addons')

Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'w0rp/ale'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'vim-syntastic/syntastic'

call plug#end() 
"Syntastic help
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:ale_completion_enabled = 1
let b:ale_fixers = ['eslint']
let b:ale_fix_on_save = 1
let b:ale_linters = ['pyflakes', 'flake8', 'pylint']
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace', ],
\   'javascript': ['eslint'],
\}


