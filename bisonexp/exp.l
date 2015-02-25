WS [ \t\n\r]

%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "exp.tab.h"
%}

%%
[a-zA-Z]([a-zA-Z0-9])*  { yylval.name = strdup(yytext); 
                          return ID;
			}

[0-9]+                  { yylval.value = atoi(yytext); 
                           return INT;
			}

{WS}                    {;}
%%
