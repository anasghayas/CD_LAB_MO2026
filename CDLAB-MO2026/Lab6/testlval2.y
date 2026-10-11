 /*C declarations*/
%{ #include <stdio.h>
   #include "list-functions.c"

   extern int yylineno, yychar;
   void yyerror(char *);
   int yylex();
   int elmcnt = 0;
   struct node* mylist = 0;
%}

/* YACC Declarations */
%union
{ 
  char* idname;
  char* ival;
  struct{int code; char*lexeme;}attr2;
  struct node* list;
}
%token <idname> ID 
%token <ival> NUM
%type <attr2> elm
%type <list> clist

%%
start:   clist ';'
       {printf("Successful Parsing : %d elements found \n", elmcnt);
        display($1);}
      ;
clist : clist ',' elm {append(&$1,$3.code, $3.lexeme); $$=$1;}
      | elm       {if (elmcnt == 1) $$=mylist;
                   append(&$$,$1.code, $1.lexeme); } 
      ;
elm   : ID  {//append(&$$,2,$1); ++elmcnt;
             $$.code=2; $$.lexeme = (char*)malloc(sizeof($1));
             strcpy($$.lexeme,$1); ++elmcnt; 
             // printf("Element %d: Identifier is %s\n", elmcnt, $$.lexeme.name);
            } 
      | NUM {// append(&$$,1,$1); ++elmcnt;
             // printf("Element %d : Number is %d \n", elmcnt, $$.lexeme.val);
             $$.code=1; $$.lexeme = (char*) malloc(sizeof($1));
             strcpy($$.lexeme,$1); ++elmcnt;
            }  
      ;
%%
void yyerror(char *s)
{printf("%s  line number : %d near symbol %c  \n", s, yylineno, (char) yychar); }
    
int main () {yyparse ();}
