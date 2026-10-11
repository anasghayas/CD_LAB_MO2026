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
"short"      {yylval.typeattr.type = (char*)malloc(sizeof(yytext)); 
               strcpy(yylval.typeattr.type, yytext);
               yylval.typeattr.width=2;return SHORT;}
"double"     {yylval.typeattr.type = (char*)malloc(sizeof(yytext)); 
              strcpy(yylval.typeattr.type, yytext);
              yylval.typeattr.width=8;return DOUBLE;}
{id}         {yylval.name=(char*)malloc(sizeof(yytext)); 
             strcpy(yylval.name, yytext); return ID;}
";"         {return ';';}
","         {return ',';}
.           {printf("Unrecognized Character : %s \n", yytext);}
%%
