%option noyywrap
%{
    #include <stdio.h>
    #include "y.tab.h"
%}

%%
[0-9] {yylval=atoi(yytext);return Number;}
[+*] {return(yytext[0]);}
[\n] {return 0;}
%%



  lex sample4.l
  728  yacc -d sample4.y
  729  gcc lex.yy.c y.tab.c
  730  ./a.out