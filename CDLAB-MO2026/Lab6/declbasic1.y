 /*C declarations*/
%{ #include <stdio.h>
   #include <string.h>
   extern int yylineno, yychar;
   void yyerror(char *);
   int yylex();
   int dcount=0, space=0, offset=0;
%}

/* YACC Declarations */

%union
{ 
  char* name;
  struct 
  { char *type;
    int width;
  } typeattr; 
}
%token <name> ID 
%token <typeattr> SHORT DOUBLE
%type <typeattr> type decl
%%
start  : dlist 
       {printf("End of Input : number of declaration statements =  %d\n", 
        dcount);
        printf("Space for all declarations :%d bytes\n", space);}
      ;
dlist : dlist decl ';' 
      {dcount++;}
      | decl ';' { dcount++;}  
      ;
decl  : type ID 
        {$$.type=$1.type; $$.width = $1.width; space+=$1.width; 
         printf("Identifier : %s type : %s size : %d bytes at offset : %d\n", 
                 $2, $1.type, $1.width, offset); offset+= $1.width;
        }
      | decl ',' ID 
        {$$.type=$1.type; $$.width = $1.width; space+=$1.width;
         printf("Identifier : %s type : %s size : %d bytes at offset : %d\n", 
                $3, $1.type, $1.width, offset); offset+= $1.width;
        }
      ;
type  : SHORT {$$.type=$1.type; $$.width = $1.width;}
      | DOUBLE{$$.type=$1.type; $$.width = $1.width;}
      ;
%%
void yyerror(char *s)
     {printf(" %s  line number : %d near symbol %c  \n", s, yylineno, (char) yychar); }
    
int main() {yyparse();}
