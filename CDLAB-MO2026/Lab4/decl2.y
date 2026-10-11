/*C declarations*/
%{ #include <stdio.h>
   int yylex(void);
   void yyerror(char *);
   extern int yychar, yylineno;
   extern char* yytext;
  
   int c=1;
%}

/* YACC Declarations */

%token INT FLOAT CHAR ID 
     
/* Grammar follows */
%%

declar:	 declar decl | decl
      	 ;
decl:    type list ';'{printf("%d Declaration statements parsed successfully \n",c++);}
         ;
type:    INT {printf("Data type is int \n");}
    	 | CHAR {printf("Data type is char \n");}
	 | FLOAT {printf("Data type is float \n");}
         ;
list :   list ',' ID   {printf("Next Identifier is  %s\n",yytext);}
         | ID          {printf("First Identifier is %s\n", yytext);}
         ;
%%
void yyerror(char *s)
{printf(" %s  Line number %d near symbol %c \n", s, yylineno,(char)yychar);}
int main () {  yyparse (); return 0; }
