%{
    #include<stdio.h>
    int m=0;
%}

%token  '(' ')'
%%
A : S {printf("%d",m);};
S : '(' S ')'{m++;};
S : ;
%%
int main(){
    printf("Enter Exp");
    yyparse();
}
int yyerror(char *s){
    printf("%s",s);
}
