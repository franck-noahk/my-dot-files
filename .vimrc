syntax on
set nu
set autoindent
set nowrap

colorscheme pablo
set t_co=78
set tabstop=4
set smartindent
ab cMain void main(void)
ab cforl for(i = 0; i < ; i++){<CR><CR>}<UP>
ab chead #define _CRT_SECURE_NO_WARNINGS <CR>#include <stdio.h><CR>#include <time.h><CR>#include<math.h><CR>#include <stdlib.h><CR><CR>c
ab assembleH .globval main<CR>.data<CR><CR><CR>.align 2<CR>.text<CR>main:<CR><CR><CR>end:<CR>mov r7, #1<CR>swi 0<UP><UP><UP><UP>
ab ( ( )
ab [ [ ]
ab { {<CR><CR>}<UP>
ab <body> <body><CR><CR><CR></body><UP><UP>
ab <head> <head><CR><CR><CR></head><UP><UP>
