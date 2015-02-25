%{
#include <stdio.h>
extern void yyerror();
%}
%union {int value;
        char * name;}


%token ID
%token INT

%type <name> ID Program Func
%type <value> Num INT

%defines
%start Program

%%

Program : Func Num
      {
        printf("Name = %s\n", $1);
	printf("Value = %d\n", $2);
	$$ = $1;
      }
      ;

Func : ID
      { $$ = $1;}
      ;

Num : INT
      { $$ = $1;}
      ;
%%

int main()
{
  return yyparse();
}

void yyerror(char *s)
{
  fprintf(stderr, "%s\n", s);
}

int yywrap() {
        return 1;
}
