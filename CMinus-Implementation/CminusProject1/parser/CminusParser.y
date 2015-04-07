/*******************************************************/
/*                     Cminus Parser                   */
/*           Implemented by leon for cs 4121           */
/*******************************************************/

/*********************DEFINITIONS***********************/
%{
#include <iostream>
#include <map>
#include <cstdio>
#include <stdlib.h>
#include <cstring>
#include <string>
using namespace std;
/*********************EXTERNAL DECLARATIONS***********************/

extern "C" void Cminus_error(const char*);

extern "C" int Cminus_parse();

extern "C" int Cminus_wrap();

extern "C" int Cminus_lex(void);

char *fileName;

extern int Cminus_lineno;

map<string,int> systable;

%}

%union
{
  int intValue;
  float floatValue;
  string *stringValue;
  struct valueofvariable{
	string name;
	int value;
  } *myval;
}

%name-prefix="Cminus_"
%defines

%start Program

%token AND
%token ELSE
%token EXIT
%token FOR
%token IF 		
%token INTEGER 
%token FLOAT
%token NOT 		
%token OR 		
%token READ
%token WHILE
%token WRITE
%token LBRACE
%token RBRACE
%token LE
%token LT
%token GE
%token GT
%token EQ
%token NE
%token ASSIGN
%token COMMA
%token SEMICOLON
%token LBRACKET
%token RBRACKET
%token LPAREN
%token RPAREN
%token PLUS
%token TIMES
%token IDENTIFIER
%token DIVIDE
%token RETURN
%token STRING	
%token INTCON
%token MINUS

%left OR
%left AND
%left NOT
%left LT LE GT GE NE EQ
%left PLUS MINUS
%left TIMES DIVDE


%type <stringValue> StringConstant STRING IOStatement
%type <stringValue> IDENTIFIER 
%type <myval> Variable
%type <intValue> Constant INTCON Expr
%type <intValue> SimpleExpr AddExpr MulExpr Factor  Assignment
/***********************PRODUCTIONS****************************/
%%
Program		: Procedures 
		{
		  //	printf("<Program> -> <Procedures>\n");
		}
	  	| DeclList Procedures
		{
		  //	printf("<Program> -> <DeclList> <Procedures>\n");
		}
          ;

Procedures 	: ProcedureDecl Procedures
		{
		  //	printf("<Procedures> -> <ProcedureDecl> <Procedures>\n");
		}
	   	|
		{
		  //	printf("<Procedures> -> epsilon\n");
		}
	   	;

ProcedureDecl : ProcedureHead ProcedureBody
		{
		  //	printf("<ProcedureDecl> -> <ProcedureHead> <ProcedureBody>\n"); 
		}
              ;

ProcedureHead : FunctionDecl DeclList 
		{
		  //	printf("<ProcedureHead> -> <FunctionDecl> <DeclList>\n");
		}
	      | FunctionDecl
		{
		  //	printf("<ProcedureHead> -> <FunctionDecl>\n");
		}
              ;

FunctionDecl :  Type IDENTIFIER LPAREN RPAREN LBRACE 
		{
		  //	printf("<FunctionDecl> ->  <Type> <IDENTIFIER> <LP> <RP> <LBR>\n"); 
		}
	      	;

ProcedureBody : StatementList RBRACE
		{
		  //	printf("<ProcedureBody> -> <StatementList> <RBR>\n");
		}
	      ;


DeclList 	: Type IdentifierList  SEMICOLON 
		{
		  //	printf("<DeclList> -> <Type> <IdentifierList> <SC>\n");
		}		
	   	| DeclList Type IdentifierList SEMICOLON
	 	{
		  //	printf("<DeclList> -> <DeclList> <Type> <IdentifierList> <SC>\n");
	 	}
          	;


IdentifierList 	: VarDecl  
		{
		  //	printf("<IdentifierList> -> <VarDecl>\n");
		}
						
                | IdentifierList COMMA VarDecl
		{
		  //	printf("<IdentifierList> -> <IdentifierList> <CM> <VarDecl>\n");
		}
                ;

VarDecl 	: IDENTIFIER
		{ 
		  //	printf("<VarDecl> -> <IDENTIFIER\n");
		}
		| IDENTIFIER LBRACKET INTCON RBRACKET
                {
		  //	printf("<VarDecl> -> <IDENTIFIER> <LBK> <INTCON> <RBK>\n");
		}
		;

Type     	: INTEGER 
		{ 
		  //	printf("<Type> -> <INTEGER>\n");
		}
                ;

Statement 	: Assignment
		{ 
		  //	printf("<Statement> -> <Assignment>\n");
		}
                | IfStatement
		{ 
		  //	printf("<Statement> -> <IfStatement>\n");
		}
		| WhileStatement
		{ 
		  //	printf("<Statement> -> <WhileStatement>\n");
		}
                | IOStatement 
		{ 		  
		  //	printf("<Statement> -> <IOStatement>\n");
		}
		| ReturnStatement
		{ 
		  //	printf("<Statement> -> <ReturnStatement>\n");
		}
		| ExitStatement	
		{ 
		  //	printf("<Statement> -> <ExitStatement>\n");
		}
		| CompoundStatement
		{ 
		  //	printf("<Statement> -> <CompoundStatement>\n");
		}
                ;

Assignment      : Variable ASSIGN Expr SEMICOLON
		{

			//cout<<"assignment "<< tmp << " = "<<$3<<endl;
			$1->value = $3;
			$$ = $3;
			systable[$1->name] = $3;	
		  //printf("<Assignment> -> <Variable> <ASSIGN> <Expr> <SC>\n");
		}
                ;
				
IfStatement	: IF TestAndThen ELSE CompoundStatement
		{
		  //	printf("<IfStatement> -> <IF> <TestAndThen> <ELSE> <CompoundStatement>\n");
		}
		| IF TestAndThen
		{
		  //	printf("<IfStatement> -> <IF> <TestAndThen>\n");
		}
		;
		
				
TestAndThen	: Test CompoundStatement
		{
		  //	printf("<TestAndThen> -> <Test> <CompoundStatement>\n");
		}
		;
				
Test		: LPAREN Expr RPAREN
		{
		  //	printf("<Test> -> <LP> <Expr> <RP>\n");
		}
		;
	

WhileStatement  : WhileToken WhileExpr Statement
		{
		  //	printf("<WhileStatement> -> <WhileToken> <WhileExpr> <Statement>\n");
		}
                ;
                
WhileExpr	: LPAREN Expr RPAREN
		{
		  // printf("<WhileExpr> -> <LP> <Expr> <RP>\n");
		}
		;
				
WhileToken	: WHILE
		{
		  //printf("<WhileToken> -> <WHILE>\n");
		}
		;


IOStatement     : READ LPAREN Variable RPAREN SEMICOLON
		{
		  //  printf("<IOStatement> -> <READ> <LP> <Variable> <RP> <SC>\n");
		}
                | WRITE LPAREN Expr RPAREN SEMICOLON
		{
		  	cout << $3  << endl;
		  //	printf("<IOStatement> -> <WRITE> <LP> <Expr> <RP> <SC>\n");
		}
                | WRITE LPAREN StringConstant RPAREN SEMICOLON         
		{
		  //		  printf("<IOStatement> -> <WRITE> <LP> <StringConstant>%s <RP> <SC>\n",$3);
		  string *tmp;
		  tmp = $3;
		  //remove ' and '
		  cout << tmp->substr(1,(tmp->length()-2)) << endl;
		}

                ;

ReturnStatement : RETURN Expr SEMICOLON
		{
		  //printf("<ReturnStatement> -> <RETURN> <Expr> <SC>\n");
		}
                ;

ExitStatement 	: EXIT SEMICOLON
		{
		  //	printf("<ExitStatement> -> <EXIT> <SC>\n");
		}
		;

CompoundStatement : LBRACE StatementList RBRACE
		{
		  //	printf("<CompoundStatement> -> <LBR> <StatementList> <RBR>\n");
		}
                ;

StatementList   : Statement
		{		
		  //	printf("<StatementList> -> <Statement>\n");
		}
                | StatementList Statement
		{		
		  //	printf("<StatementList> -> <StatementList> <Statement>\n");
		}
                ;

Expr            : SimpleExpr
		{
		  //	printf("<Expr> -> <SimpleExpr>\n");
		}
                | Expr OR SimpleExpr 
		{
			$$ = $1 || $3;
		  //	printf("<Expr> -> <Expr> <OR> <SimpleExpr> \n");
		}
                | Expr AND SimpleExpr 
		{
			$$ = $1 && $3;
		  //	printf("<Expr> -> <Expr> <AND> <SimpleExpr> \n");
		}
                | NOT SimpleExpr 
		{
			$$ = !$2;
		  //printf("<Expr> -> <NOT> <SimpleExpr> \n");
		}
                ;

SimpleExpr	: AddExpr
		{
		  //	printf("<SimpleExpr> -> <AddExpr>\n");
		}
                | SimpleExpr EQ AddExpr
		{
			$$ = $1 == $3;
		  //	printf("<SimpleExpr> -> <SimpleExpr> <EQ> <AddExpr> \n");
		}
                | SimpleExpr NE AddExpr
		{
			$$ = $1 != $3;
		  //	printf("<SimpleExpr> -> <SimpleExpr> <NE> <AddExpr> \n");
		}
                | SimpleExpr LE AddExpr
		{
			$$ = $1 <= $3;
		  //	printf("<SimpleExpr> -> <SimpleExpr> <LE> <AddExpr> \n");
		}
                | SimpleExpr LT AddExpr
		{
			$$ = $1 < $3;
		  //	printf("<SimpleExpr> -> <SimpleExpr> <LT> <AddExpr> \n");
		}
                | SimpleExpr GE AddExpr
		{
			$$ = $1 >= $3;
		  //	printf("<SimpleExpr> -> <SimpleExpr> <GE> <AddExpr> \n");
		}
                | SimpleExpr GT AddExpr
		{
			$$ = $1 > $3;
		  //	printf("<SimpleExpr> -> <SimpleExpr> <GT> <AddExpr> \n");
		}
                ;

AddExpr		:  MulExpr            
		{
		  //	printf("<AddExpr> -> <MulExpr>\n");
		}
                |  AddExpr PLUS MulExpr
		{
			$$ = $1 + $3;
		  //	cout<< $$ <<" = "<<$1 << "+"<<$3<<endl;
		  //	printf("<AddExpr> -> <AddExpr> <PLUS> <MulExpr> \n");
		}
                |  AddExpr MINUS MulExpr
		{
			$$ = $1 - $3;
		  //	printf("<AddExpr> -> <AddExpr> <MINUS> <MulExpr> \n");
		}
                ;

MulExpr		:  Factor
		{
		  //	printf("<MulExpr> -> <Factor>\n");
		}
                |  MulExpr TIMES Factor
		{
			$$ = $1 * $3;
		  //	printf("<MulExpr> -> <MulExpr> <TIMES> <Factor> \n");
		}
                |  MulExpr DIVIDE Factor
		{
			$$ = $1 / $3;
		  //	printf("<MulExpr> -> <MulExpr> <DIVIDE> <Factor> \n");
		}		
                ;
				
Factor          : Variable
		{ 
			$$ = systable[$1->name];
		  //	cout<<"variable value is "<< $$ << "name is "<< $1->name <<endl;
		  //	printf("<Factor> -> <Variable>\n");
		}
                | Constant
		{ 
		  //	printf("<Factor> -> <Constant>\n");
		}
                | IDENTIFIER LPAREN RPAREN
       		{	
		  //	printf("<Factor> -> <IDENTIFIER> <LP> <RP>\n");
		}
         	| LPAREN Expr RPAREN
		{
			$$ = $2;
		   //cout << "(expr) is "<<$2 << endl;
		  //	printf("<Factor> -> <LP> <Expr> <RP>\n");
		}
                ;  

Variable        : IDENTIFIER
		{
			$$->name = *$1;
		  //	printf("<Variable> -> <IDENTIFIER>\n");
		}
                | IDENTIFIER LBRACKET Expr RBRACKET    
               	{
		  //	printf("<Variable> -> <IDENTIFIER> <LBK> <Expr> <RBK>\n");
               	}
                ;			       

StringConstant 	: STRING
                {
		  // printf("<StringConstant> -> <STRING> \n");
		}
                ;

Constant        : INTCON
		{ 
		  //	printf("<Constant> -> <INTCON>\n");
		}
                ;
%%


/********************C/C++ ROUTINES *********************************/

void Cminus_error(const char *s)
{
  fprintf(stderr,"%s: line %d: %s\n",fileName,Cminus_lineno,s);
}

int Cminus_wrap() {
  return 1;
}

static void initialize(char* inputFileName) {

  stdin = freopen(inputFileName,"r",stdin);
  if (stdin == NULL) {
    fprintf(stderr,"Error: Could not open file %s\n",inputFileName);
    exit(-1);
  }

  int len = strlen(inputFileName);
  // find the position of last .
  // for example, 1.hello.cm ==> 1.hello.s
  while(inputFileName[len-1]!='.')
    len--;

  char* outputFileName = (char*) malloc((len+1)*sizeof(char));
  strncpy(outputFileName,inputFileName,len);
  strncat(outputFileName,"s",1);
  stdout = freopen(outputFileName,"w",stdout);
  if (stdout == NULL) {
    fprintf(stderr,"Error: Could not open file %s\n",outputFileName);
    exit(-1);
  }

}

static void finalize() {

  fclose(stdin);
  fclose(stdout);    
}

int main(int argc, char** argv)

{	
  fileName = argv[1];
  initialize(fileName);
  
  Cminus_parse();
  finalize();
  
  return 0;
}
/******************END OF C/C++ ROUTINES**********************/
