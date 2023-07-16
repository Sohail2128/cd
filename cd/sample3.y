%{
    #include<stdio.h>
    int yyerror(char *s);
%}

%token c d
%%
S : C C 
C : c C 
C : d 
%%
int main(){
    printf("Enter Exp");
    yyparse();
}
int yyerror(char *s){
    printf("%s",s);
}
