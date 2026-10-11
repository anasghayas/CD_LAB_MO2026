 /*C declarations*/
%{ #include <stdio.h>
   extern int yylineno, yychar;
   void yyerror(char *);
   int yylex();
   int idcnt = 0, numcnt = 0, elmcnt = 0;
%}

/* YACC Declarations */
%union
{ 
  char* idname;
  int ival;
  struct 
  { int code;
    union { int val; char * name;} lexeme;
  }attr2; 
}
%token <idname> ID 
%token <ival> NUM
%type <attr2> elm clist
%%
start:   clist ';'
       {printf("Successful Parsing : %d elements found; numbers are %d ; identifiers are %d\n", elmcnt, numcnt, idcnt);}
      ;
clist : clist ',' elm {}
      | elm       {} 
      ;
elm   : ID  {$$.code = 2;$$.lexeme.name = $1; elmcnt++; idcnt++;
             printf("Element %d : Identifier is %s\n", elmcnt, $$.lexeme.name);} 
      | NUM {$$.code = 1;$$.lexeme.val = $1; elmcnt++; numcnt++;
             printf("Element %d : Number is %d \n", elmcnt, $$.lexeme.val);}  
      ;
%%
void yyerror(char *s)
{printf("%s  line number : %d near symbol %c  \n", s, yylineno, (char) yychar); }
    
int main () {yyparse ();}
