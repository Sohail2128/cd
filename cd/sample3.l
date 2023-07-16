%option noyywrap
%{
    #include <stdio.h>
    #include "y.tab.h"
%}

%%
[cd] {return(yytext());}
%%