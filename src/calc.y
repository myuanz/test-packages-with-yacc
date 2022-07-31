%{
#include <stdio.h>
#include <stdlib.h>
#include <cjson/cJSON.h>

extern int yylex();
extern int yyparse();
extern FILE* yyin;

void yyerror(const char* s);

%}

%start calculation

%%
calculation: ;
%%

int main() {
    cJSON *monitor = cJSON_CreateObject();
	return 0;
}
void yyerror(const char* s) {
	fprintf(stderr, "Parse error: %s\n", s);
	exit(1);
}
