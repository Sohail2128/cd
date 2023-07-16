

%{
    #include<stdio.h>
    int i=0;
%}

%%
[a-zA-Z0-9]+ {i=yyleng;fun(i);}
%%
fun(int l){
    if(yytext[0]=='A'){
        if(i==3){
            printf("%s is word of length 3\n",yytext);
        }
        /*else{
            printf("its not length of 3");
        }*/
    }
    /*else{
        printf("is doesnot start with a letter");
    }*/
}
int yywrap(){return -1;}

int main(){
    yylex();
    return 0;
}