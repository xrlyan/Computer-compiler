/*******************************************************/
/*                     Cminus Parser                   */
/*           Implemented by leon for cs 4121           */
/*******************************************************/

/*********************DEFINITIONS***********************/
%{
#include "node/node.h"
#include <cstdio>
#include <stdlib.h>
#include <cstring>
#include <typeinfo> 
/*********************EXTERNAL DECLARATIONS***********************/

extern "C" void Cminus_error(const char*);
extern "C" int Cminus_parse();
extern "C" int Cminus_wrap();
extern "C" int Cminus_lex(void);

char *fileName;
extern int Cminus_lineno;
CodeGenContext *context;
map<string,int> systable;
NProgram *programBlocks;

%}

%union
{
  Node *node;
  NBlock *block;
  NProgram *program;
  NIdentifier *ident;
  NExpression *expr;
  NStatement *stmt;
  NIFStatement *ifstmt;
  NWHILEStatement *whilestmt;
  NVariableDeclaration *var_decl;
  vector<NVariableDeclaration*> *varvec;
  vector<NExpression*> *exprvec;
  vector<NStatement*> *statvec;
  long long intValue;
  string *stringValue;	
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

%type <program> Program Procedures
%type <block> ProcedureBody ProcedureDecl 
%type <stmt>  Statement ExitStatement
%type <whilestmt>  WhileStatement
  
%type <expr> IOStatement  ReturnStatement Test
%type <expr> Constant Factor MulExpr AddExpr SimpleExpr Expr 
%type <expr> StringConstant Assignment WhileExpr
%type <varvec> DeclList IdentifierList ProcedureHead
%type <var_decl> VarDecl
%type <ident> Variable IDENTIFIER
%type <statvec> StatementList CompoundStatement
%type <stringValue> STRING INTCON 
%type <ifstmt> IfStatement TestAndThen
/***********************PRODUCTIONS****************************/
%%
Program		: Procedures 
		{
			$$ = $1;
			programBlocks=$$;
		}
	  	| DeclList Procedures
		{	
			for(int i=0;i<$1->size();i++){
				$2->variables.push_back((*$1)[i]);
			}
			$$ = $2;
			programBlocks=$$;
		}
          ;

Procedures 	: ProcedureDecl Procedures
		{
                        $2 = new NProgram();	
			$2->blocks.push_back($1);			
			$$ = $2;			
		}
	   	|
		{
		  //	printf("<Procedures> -> epsilon\n");
		}
	   	;

ProcedureDecl : ProcedureHead ProcedureBody
		{
			for(int i=0;i<$1->size();i++){
				$2->localVariables.push_back((*$1)[i]);
			}			
			$$ = $2;
		}
              ;

ProcedureHead : FunctionDecl DeclList 
		{
			$$ = $2;
		}
	      | FunctionDecl
		{
			$$ = new VariableList();
		}
              ;

FunctionDecl :  Type IDENTIFIER LPAREN RPAREN LBRACE 
		{
			//cout<<*$2<<endl;
		}
	      	;

ProcedureBody : StatementList RBRACE
		{
			$$ = new NBlock();			
			for(int i=0;i<$1->size();i++){
				$$->statements.push_back((*$1)[i]);
			}				
		}
	      ;


DeclList 	: Type IdentifierList  SEMICOLON 
		{
			$$ = $2;
		}		
	   	| DeclList Type IdentifierList SEMICOLON
	 	{
		        $1->insert($1->begin(),$3->begin(),$3->end());		  
			$$ = $1;
	 	}
          	;


IdentifierList 	: VarDecl  
		{
			$$ = new VariableList();
			$$->push_back($1);

		}
						
                | IdentifierList COMMA VarDecl
		{
			$$ = new VariableList();
			$1->push_back($3);
			$$ = $1;
		}
                ;

VarDecl 	: IDENTIFIER
		{ 
			int size = context->currentOffset;
			context->varoffset[$1->name]=size;
			context->currentOffset+=sizeof(int);
			$$ = new NVariableDeclaration(*$1);	
		}
		| IDENTIFIER LBRACKET INTCON RBRACKET
                {
		        $1->isArray = true;
		        $1->capacity = atol($3->c_str());
			int size = context->currentOffset;
			context->varoffset[$1->name]=size;
			context->currentOffset+=sizeof(int)*($1->capacity);
			$$ = new NVariableDeclaration(*$1);
		}
		;

Type     	: INTEGER 
		{ 
		  //	printf("<Type> -> <INTEGER>\n");
		}
                ;

Statement 	: Assignment
		{ 
			$$ = new NExpressionStatement(*$1);
		}
                | IfStatement
		{ 
		        $$ = $1;
		}
		| WhileStatement
		{ 
		        $$ = $1;
		}
                | IOStatement 
		{ 	
			$$ = new NExpressionStatement(*$1);	  
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
		  //$$ = new NExpressionStatement(*$1);	  
		}
                ;

Assignment      : Variable ASSIGN Expr SEMICOLON
		{
 			$$ = new NAssignment(*$1, *$3);	
		}
                ;
				
IfStatement	: IF TestAndThen ELSE CompoundStatement
		{
		  $$ = $2;
		  $$->elseStates = *$4;
		}
		| IF TestAndThen
		{
		   $$ = $2;
		}
		;
		
				
TestAndThen	: Test CompoundStatement
		{
		  $$ = new NIFStatement(*$1);
		  $$->ifStates = *$2;
		}
		;
				
Test		: LPAREN Expr RPAREN
		{
		  $$=$2;
		}
		;
	

//WhileStatement  : WhileToken WhileExpr Statement
WhileStatement  : WhileToken WhileExpr CompoundStatement
		{
		  $$ = new NWHILEStatement(*$2);
		  $$->whileStates = *$3;
		}
                ;
                
WhileExpr	: LPAREN Expr RPAREN
		{
		  $$=$2;
		}
		;
				
WhileToken	: WHILE
		{
		  //printf("<WhileToken> -> <WHILE>\n");
		}
		;

IOStatement     : READ LPAREN Variable RPAREN SEMICOLON
		{
			string *tmp= new string("read");
			NIdentifier *ident = new NIdentifier(*tmp,1);
			$$ = new NIOStatement(*ident,*$3);
		}
                | WRITE LPAREN Expr RPAREN SEMICOLON
		{
			string *tmp= new string("write");
			NIdentifier *ident = new NIdentifier(*tmp,1);
			$$ = new NIOStatement(*ident,*$3);
		}
                | WRITE LPAREN StringConstant RPAREN SEMICOLON         
		{	
			string *tmp= new string("write");
			NIdentifier *ident = new NIdentifier(*tmp);
			$$ = new NIOStatement(*ident,*$3);
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
		  $$ = $2;
		}
                ;

StatementList   : Statement
		{	
			$$ = new StatementList();
			$$->push_back($1);	
		}
                | StatementList Statement
		{	$1->push_back($2);
			$$ = $1;	
		}
                ;

Expr            : SimpleExpr
		{
			$$ = $1;
		}
                | Expr OR SimpleExpr 
		{
			$$ = new NBinaryOperator(*$1, "||", *$3);
		}
                | Expr AND SimpleExpr 
		{
			$$ = new NBinaryOperator(*$1, "&&", *$3);
		}
                | NOT SimpleExpr 
		{       
		        NInteger *a = new NInteger(0);
			$$ = new NBinaryOperator(*a, "!", *$2);
		}
                ;

SimpleExpr	: AddExpr
		{
			$$ = $1;
		}
                | SimpleExpr EQ AddExpr
		{
			$$ = new NBinaryOperator(*$1, "EQ", *$3);
		}
                | SimpleExpr NE AddExpr
		{
			$$ = new NBinaryOperator(*$1, "NE", *$3);
		}
                | SimpleExpr LE AddExpr
		{
			$$ = new NBinaryOperator(*$1, "LE", *$3);
		}
                | SimpleExpr LT AddExpr
		{
			$$ = new NBinaryOperator(*$1, "LT", *$3);
		}
                | SimpleExpr GE AddExpr
		{
			$$ = new NBinaryOperator(*$1, "GE", *$3);
		}
                | SimpleExpr GT AddExpr
		{
			$$ = new NBinaryOperator(*$1, "GT", *$3);
		}
                ;

AddExpr		:  MulExpr            
		{
			$$ = $1;
		}
                |  AddExpr PLUS MulExpr
		{
			$$ = new NBinaryOperator(*$1, "+", *$3);
		}
                |  AddExpr MINUS MulExpr
		{
			$$ = new NBinaryOperator(*$1, "-", *$3);
		}
                ;

MulExpr		:  Factor
		{
			$$ = $1;
		}
                |  MulExpr TIMES Factor
		{
			$$ = new NBinaryOperator(*$1, "*", *$3);
		}
                |  MulExpr DIVIDE Factor
		{
			$$ = new NBinaryOperator(*$1, "/", *$3);
		}		
                ;
				
Factor          : Variable
		{ 
			$$ = $1;
		}
                | Constant
		{ 
		        $$ = $1;
		}
                | IDENTIFIER LPAREN RPAREN
       		{	
		  //	printf("<Factor> -> <IDENTIFIER> <LP> <RP>\n");
		}
         	| LPAREN Expr RPAREN
		{
			$$ = $2;
		}
                ;  

Variable        : IDENTIFIER
		{
			$$ = $1;
		}
                | IDENTIFIER LBRACKET Expr RBRACKET    
               	{
		        $1->isArray = true;
		        $1->offset = $3;
		        $$ = $1;
		  
		  //	printf("<Variable> -> <IDENTIFIER> <LBK> <Expr> <RBK>\n");
               	}
                ;			       

StringConstant 	: STRING
                {
			context->constantString.push_back($1->substr(1,($1->length()-2)));
			$$ = new NString($1->substr(1,($1->length()-2)));
		}
                ;

Constant        : INTCON
		{ 	
			$$ = new NInteger(atol($1->c_str()));
			//NInteger *test = static_cast<NInteger *>$$;
		}
                ;
%%

/********************C/C++ ROUTINES *********************************/

void Cminus_error(const char *s){
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

int main(int argc, char** argv){	
  fileName = argv[1];
  initialize(fileName);
  context = new CodeGenContext();
  context->regList.push_back("");
  context->regList.push_back("eax");
  context->regList.push_back("ebx");
  context->regList.push_back("ecx");
  context->regList.push_back("edx");
  context->regList.push_back("r9d");
  context->regList.push_back("r10d");
  context->regList.push_back("r11d");
  context->regList.push_back("r12d");
  context->regList.push_back("r13d");
  context->regList.push_back("r14d");
  context->regList.push_back("r15d");
  Cminus_parse();
  programBlocks->codeGen(*context);
  finalize();
  return 0;
}
/******************END OF C/C++ ROUTINES**********************/
