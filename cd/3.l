%{
    #include<stdio.h>
%}

%% 
[-].[0-9]+ {printf("%s is a digit",yytext);}  
%%
int yywrap(){}
int main(){
    printf("Enter a digit");
    yylex();
    return 0;
}
