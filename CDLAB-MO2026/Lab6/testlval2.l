%option noyywrap
%{
#include <stdio.h>
#include "y.tab.h"
#include <stdlib.h>
#include <string.h>
%}

%option yylineno
ws [ \t\n]+
letter [A-Za-z_]
digit  [0-9]
id {letter}({letter}|{digit})*
%%

{ws}        ;
{digit}+    {yylval.ival = (char*)malloc(sizeof(yytext));
             strcpy(yylval.ival, yytext); return NUM;}
{id}        {yylval.idname=(char*)malloc(sizeof(yytext)); 
             strcpy(yylval.idname, yytext); return ID;}
";"         {return ';';}
","         {return ',';;}
.           {printf("Unrecognized Character : %s \n", yytext);}
%%
// int main(yylex();}
