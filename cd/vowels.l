%{
    #include<stdio.h>
    int vowels=0;
    int consonants=0;
%}

%%
[aeiouAEIOU] {vowels++;}
[a-zA-Z] {consonants++;}
%%

int yywrap(){}
int main(){
    yylex();
    printf("count of vowels %d",vowels);
    printf("count of consonants %d",consonants);
    return 0;
}
