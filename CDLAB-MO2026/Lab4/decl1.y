/*C declarations*/
%{ #include <stdio.h>
  int yylex(void);
   void yyerror(char *);
   extern int yychar, yylineno;
   extern char* yytext;
%}

/* YACC Declarations */

%token INT ID 
     
/* Grammar follows */
%%

decl:    type list ';'{printf("Rule 1 used : Input parsed successfully \n");}
         ;
type:    INT          {printf("Rule 2 used : INT = %d seen\n", INT);}
         ;
list :   list ',' ID   {printf("Rule 3 used: Next Identifier is %s and ID is %d\n",yytext, ID);}
         | ID          {printf("Rule 4 used : First Identifier is %s and ID is %d\n", yytext, ID);}
         ;
%%
void yyerror(char *s)
{printf(" %s  Line number %d near symbol %c \n", s, yylineno,(char)yychar);}
int main () {  yyparse (); return 0; }
