%{
    #include<stdio.h>
     extern int yylval;
%}

%token Number '+' '*'
%%
A : E{printf("%d",$1);};
E : E '+' T {printf("+");};
E : T {};
T : T '*' F {printf("*");};
T : F {};
F : Number{ printf("%d",$1);}; 
%%
int main(){
    printf("Enter Exp");
    yyparse();
}
int yyerror(char *s){
    printf("%s",s);
}
