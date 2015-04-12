#pragma once
#include <iostream>
#include <vector>
#include <map>
#include <string>
#include <typeinfo>
using namespace std;


class CodeGenContext {
public:
  vector<string> constantString;

  map<string,string>aliasname;

  string functionName;


  int currentOffset;
  map<string,int>varoffset;
  int numofvariable;

  map<string,int> currentlocaloffset;
  map<string,map<string,int> >localvaroffset;
  int numoflocalvariable;

  int readforvariable;

  CodeGenContext() {readforvariable=0,functionName="global",
      startSeg=false,segIndex=0,currentOffset=0;}

  bool startSeg;
  int segIndex;

  //=====================
  string newReg;
  string prevlReg;
  string prevrReg;

  // get the reg 
  string regList32[10];
  string regList64[10];
  int regList[10];

  string getReg(int type){
    int i=0;
    for(;i<10;i++){
      if(regList[i]==0){
	regList[i]=1;	
	if(type==32)
	  return regList32[i];
	else
	  return regList64[i];		
      }
    }

  }
  // clean the reg
  void clearReg(string reg){
    int i = 0;
    for(;i<10;i++){
      if(regList32[i]==reg || regList64[i] == reg){
	regList[i]=0;
	return;
      }
    }
  }

  // set the reg
  void setReg(string reg){
    int i = 0;
    for(;i<10;i++){
      if(regList32[i]==reg || regList64[i] == reg){
	regList[i]=1;
	return;
      }
    }
  }

  string getReg64(string reg){
    int i = 0;
    for(;i<10;i++){
      if(regList32[i]==reg)
	break;
    }
    return regList64[i];
  }
  string getReg32(string reg){
    int i = 0;
    for(;i<10;i++){
      if(regList64[i]==reg)
	break;
    }
    return regList32[i];
  }


  void initReglist(){
    for(int i=0;i<10;i++)
      regList[i]=0;

    regList32[0]="ebx";
    regList32[1]="ecx";
    regList32[2]="r8d";
    regList32[3]="r9d";
    regList32[4]="r10d";
    regList32[5]="r11d";
    regList32[6]="r12d";
    regList32[7]="r13d";
    regList32[8]="r14d";
    regList32[9]="r15d";

    regList64[0]="rbx";
    regList64[1]="rcx";
    regList64[2]="r8";
    regList64[3]="r9";
    regList64[4]="r10";
    regList64[5]="r11";
    regList64[6]="r12";
    regList64[7]="r13";
    regList64[8]="r14";
    regList64[9]="r15";
    //regList32={"%ebx","%ecx","%r8d", "%r9d", "%r10d", "%r11d", "%r12d", "%r13d", "%r14d", "%r15d"};
    //regList64={"%rbx","%rcx","%r8", "%r9", "%r10", "%r11", "%r12", "%r13", "%r14", "%r15"};

  }
  // =================================

};

class NStatement;
class NExpression;

class NVariableDeclaration;
class NBlock;

typedef vector<NStatement*> StatementList;
typedef vector<NExpression*> ExpressionList;
typedef vector<NVariableDeclaration*> VariableList;
typedef vector<NBlock*> BlockList;


class Node {
 public:
  virtual ~Node() {}
  virtual void codeGen(CodeGenContext& context) { }
};

class NExpression : public Node {
 public:
  string reg;
  bool isMethod;
  NExpression(){isMethod=false;}
  virtual void codeGen(CodeGenContext& context) { }
};

class NStatement : public Node {
 public:
  bool startSeg;
  int segIndex;
  NStatement(){startSeg = false,segIndex=0;}
  virtual void codeGen(CodeGenContext& context) { }
};

class NInteger : public NExpression {
 public:
  long long value;
 NInteger(long long value) : value(value) { }
  virtual void codeGen(CodeGenContext& context){
    context.newReg = context.getReg(32);

    cout<<"	movl $"<<value<<", \%"<<context.newReg<<endl;
    context.startSeg = false;
  }		
};


class NDouble : public NExpression {
 public:
  double value;
 NDouble(double value) : value(value) { }
  virtual void codeGen(CodeGenContext& context){
  }
};

class NString : public NExpression {
 public:
  string name;
 NString(const string& name) : name(name) { }
  virtual void codeGen(CodeGenContext& context){

    string regName = context.getReg(32);
    cout<<"	movl $"<<context.aliasname[name]<<", \%"<<regName<<endl;
    context.startSeg = false;
    context.newReg  = regName;

  }
};

class NIdentifier : public NExpression {
 public:
  string name;
  int type;
  int capacity;
  bool isArray;
  NExpression* offset;
 NIdentifier(const string& name,int type=0) : name(name),type(type){ 
    capacity = 1;
    isArray = false;
 }
  virtual void codeGen(CodeGenContext& context){
    if(isMethod){

      cout<< "	call "<<name<<endl;


    }else if(isArray){

      string tmp = context.getReg(64);   

      if(context.localvaroffset[context.functionName].find(name)!=
	 context.localvaroffset[context.functionName].end()){
	cout<<"	movq %rbp,\%"<<tmp<<endl;
	context.startSeg = false;
	cout<<"	subq $"<<context.localvaroffset[context.functionName][name]<<", \%"<<tmp<<endl;

      }else{
	
	cout<<"	movq $_gp,\%"<<tmp<<endl;
	context.startSeg = false;
	cout<<"	addq $"<<context.varoffset[name]<<", \%"<<tmp<<endl;
      }

      int tmpRead = context.readforvariable;
      context.readforvariable = 0;

      offset->codeGen(context);

      offset->reg = context.newReg;

      context.readforvariable= tmpRead;

      cout<<"	imull $4, %"<<offset->reg<<endl;
      cout<<"	movslq %"<<offset->reg<<", %"<<context.getReg64(offset->reg)<<endl;

      cout<<"	addq %"<<context.getReg64(offset->reg) <<", \%"<<tmp<<endl;
      context.clearReg(offset->reg);
 
      context.newReg = tmp;

      if(context.readforvariable)
	return;

      context.newReg = context.getReg(32);
      cout<<"	movl (%"<<tmp<<"), %"<<context.newReg<<endl;		

      context.clearReg(tmp);
      
    }else{

      string tmp = context.getReg(64);
      context.newReg = tmp;


      if(context.localvaroffset[context.functionName].find(name)!=
	 context.localvaroffset[context.functionName].end()){
	cout<<"	movq %rbp,\%"<<tmp<<endl;
	context.startSeg = false;
	cout<<"	subq $"<<context.localvaroffset[context.functionName][name]<<", \%"<<tmp<<endl;

      }else{
	
	cout<<"	movq $_gp,\%"<<tmp<<endl;
	context.startSeg = false;
	cout<<"	addq $"<<context.varoffset[name]<<", \%"<<tmp<<endl;
      }

	if(context.readforvariable)
	  return;

	reg = context.getReg(32);

	cout<<"	movl (%"<<tmp<<"), %"<<reg<<endl;		
	context.clearReg(tmp);
	context.newReg = reg;

    }
  }
};


class NMethodCall : public NExpression {
 public:
  const NIdentifier& id;
  ExpressionList arguments;
 NMethodCall(const NIdentifier& id, ExpressionList& arguments) :
  id(id), arguments(arguments) { }
 NMethodCall(const NIdentifier& id) : id(id) { }
  virtual void codeGen(CodeGenContext& context){
  }
};


class NBinaryOperator : public NExpression {
 public:
  string op;
  NExpression& lhs;
  NExpression& rhs;
 NBinaryOperator(NExpression& lhs, string op, NExpression& rhs) :
  lhs(lhs), rhs(rhs), op(op) { }
  virtual void codeGen(CodeGenContext& context){

    lhs.codeGen(context);
    lhs.reg = context.newReg;
    rhs.codeGen(context);
    rhs.reg = context.newReg;

    if(op=="+" || op=="-" || op=="*"){
      if(op=="+")
	cout<<"	addl \%"<<rhs.reg<<", \%"<<lhs.reg<<endl;
      else if(op=="-")
	cout<<"	subl \%"<<rhs.reg<<", \%"<<lhs.reg<<endl;
      else if(op=="*")
	cout<<"	imull \%"<<rhs.reg<<", \%"<<lhs.reg<<endl;
    }

    if(op=="/"){

      string tmp = context.getReg(32); 

      cout<<"	movl \%"<<lhs.reg<<", %eax"<<endl;
      cout<<"	movl \%"<<rhs.reg<<", \%"<<tmp<<endl;
      cout<<"	cdq"<<endl;
      cout<<"	idivl \%"<<tmp<<endl;
      cout<<"	movl \%eax"<<", \%"<<lhs.reg<<endl;
      context.clearReg(tmp);
    }


    if(op=="&&" || op=="||" || op=="^"){

      string tmp = context.getReg(32); 
      
      cout<<"	movl \%"<<lhs.reg<<", %eax"<<endl;
      cout<<"	movl \%"<<rhs.reg<<", \%"<<tmp<<endl;
      if(op=="&&")
	cout<<"	andl  \%eax, \%"<<tmp<<endl;
      else if(op=="||")
	cout<<"	orl  \%eax, \%"<<tmp<<endl;
      else if(op=="^")
	cout<<"	xorl  \%eax, \%"<<tmp<<endl;

      cout<<"	movl \%"<<tmp<<", \%"<<lhs.reg<<endl;

      context.clearReg(tmp);
    }


    if(op=="EQ" || op=="GT" || op=="GE"|| op=="LT" 
       || op=="LE"|| op=="NE" || op=="!"){


      //      cout<<"lhs.reg = "<<lhs.reg<<endl;
      //cout<<"rhs.reg = "<<rhs.reg<<endl;
      string tmp = context.getReg(32); 

      cout<<"	movl \%"<<lhs.reg<<", %eax"<<endl;
      cout<<"	movl \%"<<rhs.reg<<", \%"<<tmp<<endl;

      cout<<"	cmpl  \%"<<tmp<<", \%eax"<<endl;

      cout<<"	movl $0"<<", \%"<<tmp<<endl;
      cout<<"	movl $1"<<", \%eax"<<endl;

      if(op=="!"){
	cout<<"	cmove \%eax"<<", \%"<<tmp<<endl;
      }else if(op=="EQ"){
	cout<<"	cmove \%eax"<<", \%"<<tmp<<endl;
      }else if(op=="LT"){
	cout<<"	cmovl \%eax"<<", \%"<<tmp<<endl;
      }else if(op=="LE"){
	cout<<"	cmovle \%eax"<<", \%"<<tmp<<endl;
      }else if(op=="GE"){
	cout<<"	cmovge \%eax"<<", \%"<<tmp<<endl;
      }else if(op=="GT"){
	cout<<"	cmovg \%eax"<<", \%"<<tmp<<endl;
      }else if(op=="NE"){
	cout<<"	cmovne \%eax"<<", \%"<<tmp<<endl;
      }

      cout<<"	movl \%"<<tmp<<", \%"<<lhs.reg<<endl;

      context.clearReg(tmp);

    }        

    context.clearReg(rhs.reg);
    context.newReg = lhs.reg;
  }

};

class NReturnStatement : public NExpression {
 public:	
  NExpression& arguments;	
 NReturnStatement(NExpression& arguments) :
  arguments(arguments) {}
  virtual void codeGen(CodeGenContext& context){


    arguments.codeGen(context);
    if(arguments.isMethod)
      arguments.reg = "eax";
    else
      arguments.reg = context.newReg;

    cout<<"	movl %"<<arguments.reg<<", %eax"<<endl;
    cout<<"	movq %rbp, %rsp"<<endl;
    cout<<"	popq %rbp"<<endl;			
    cout<<"	ret"<<endl;    

    context.clearReg(arguments.reg);
  }
}; 

class NIOStatement : public NExpression {
 public:	
  NIdentifier& id;
  NExpression& arguments;	
 NIOStatement(NIdentifier& id, NExpression& arguments) :
  id(id), arguments(arguments) {}
  virtual void codeGen(CodeGenContext& context){
    if(id.name=="write"){		

        arguments.codeGen(context);

        if(arguments.isMethod)
              arguments.reg="eax";
        else
             arguments.reg = context.newReg;

      cout<<"	movl %"<<arguments.reg<<", \%esi"<<endl;
      cout<<"	movl $0, \%eax"<<endl;

      // output two different types of data
      if(typeid(arguments)==typeid(NString))
	cout<<"	movl $.str_wformat, %edi"<<endl;
      else
	cout<<"	movl $.int_wformat, %edi"<<endl;


      cout<<"	call printf"<<endl;		
      
      context.clearReg(arguments.reg);

    }else{ // read

      context.readforvariable=1;
 
     arguments.codeGen(context);     

      arguments.reg = context.newReg;

      context.readforvariable=0;

      cout<<"	movl $.int_rformat, \%edi"<<endl;
      cout<<"	movl \%"<<context.getReg32(arguments.reg)<<", \%esi"<<endl;
      cout<<"	movl $0, \%eax"<<endl;
      cout<<"	call scanf"<<endl;
      context.clearReg(arguments.reg);

    }
  }
}; 


class NAssignment : public NExpression {
 public:
  NIdentifier& lhs;
  NExpression& rhs;
 NAssignment(NIdentifier& lhs, NExpression& rhs) :
  lhs(lhs), rhs(rhs) { }
  virtual void codeGen(CodeGenContext& context){

    context.readforvariable=1;		

    lhs.codeGen(context);

    lhs.reg = context.newReg;

    if(typeid(rhs)==typeid(NIdentifier) && rhs.isMethod){
      context.readforvariable=0;		

      cout<<"	push \%"<<lhs.reg<<endl;
      
      rhs.codeGen(context);  

      cout<<"	pop \%"<<lhs.reg<<endl;
      cout<<"	movl \%eax, (\%"<<lhs.reg<<")"<<endl;      
      
    }else{
      context.readforvariable=0;		

      rhs.codeGen(context);
      rhs.reg = context.newReg;

      cout<<"	movl \%"<<rhs.reg<<", (\%"<<lhs.reg<<")"<<endl;
    }

    context.clearReg(rhs.reg);	
    context.clearReg(lhs.reg);	

  }
};


class NWHILEStatement : public NStatement {
 public:
  NExpression& expression;
  StatementList whileStates;

 NWHILEStatement(NExpression& expression) :
  expression(expression) { }

void codeGen(CodeGenContext& context){

    expression.reg=context.getReg(32);		
    context.prevlReg = expression.reg;
    context.segIndex++;
    int headSeg = context.segIndex;
    cout<<".L"<<headSeg<<":"<<endl;

    expression.codeGen(context);
    expression.reg = context.newReg;

    cout<<"	movl $0"<<", \%eax"<<endl;
    cout<<"	cmpl \%eax"<<", \%"<<expression.reg<<endl;
    cout<<"	je .L"<<this->segIndex<<endl;

    context.clearReg(expression.reg);	

    StatementList::const_iterator it;

    for (it = whileStates.begin(); it != whileStates.end(); it++) {

      string tmp;
      tmp+= typeid(**it).name();

      if(typeid(**it)==typeid(NWHILEStatement) 
	 || tmp == "12NIFStatement"){
	context.segIndex++;
	if(!(**it).startSeg)
	  (**it).segIndex = context.segIndex;
	(**(it+1)).segIndex = context.segIndex;
	(**(it+1)).startSeg = true;
      }



      if((**it).startSeg)
	cout<<".L"<<(**it).segIndex<<":"<<endl;


      if((**it).startSeg && tmp == "12NIFStatement")
	  (**it).segIndex=context.segIndex;

      (**it).codeGen(context);
    }

    cout<<"	jmp .L"<<headSeg<<endl;
  }
};

class NIFStatement : public NStatement {
 public:
  NExpression& expression;
  StatementList ifStates;
  StatementList elseStates;

 NIFStatement(NExpression& expression) :
  expression(expression) { }
void codeGen(CodeGenContext& context){

    expression.codeGen(context);
    expression.reg=context.newReg;		

    cout<<"	movl $0"<<", \%eax"<<endl;
    cout<<"	cmpl \%eax"<<", \%"<<expression.reg<<endl;

    if(elseStates.size()>0){
      context.segIndex++;
      this->segIndex=context.segIndex;
    }

    cout<<"	je .L"<<this->segIndex<<endl;

    context.clearReg(expression.reg);	

    bool lastJump = false;
    int tailSeg = 0;

    for(int i=0;i<ifStates.size();i++){

      if(typeid(*ifStates[i])==typeid(NWHILEStatement)||
	   typeid(*ifStates[i])==typeid(NIFStatement)){
	context.segIndex++;
	if(i<ifStates.size()-1){
	  ifStates[i+1]->startSeg = true;
	  ifStates[i+1]->segIndex = context.segIndex;
	}else{
	  lastJump = true;
	  tailSeg = context.segIndex;
	}

	if(!ifStates[i]->startSeg)
	  ifStates[i]->segIndex = context.segIndex;
      }

      if(ifStates[i]->startSeg){
	cout<<".L"<<ifStates[i]->segIndex<<":"<<endl;
	context.startSeg = true;
      }

      ifStates[i]->codeGen(context);
      context.startSeg = false;
    }


    if(elseStates.size()>0){
      if(lastJump)
	cout<<".L"<<tailSeg<<":"<<endl;

      cout<<"	jmp .L"<<this->segIndex-1<<endl;
      StatementList::const_iterator it;
      cout<<".L"<<this->segIndex<<":"<<endl;


      lastJump = false;
      tailSeg = 0;

      for(int i=0;i<elseStates.size();i++){
	if(typeid(*elseStates[i])==typeid(NWHILEStatement)||
	   typeid(*elseStates[i])==typeid(NIFStatement)){
	  context.segIndex++;
	  if(i<elseStates.size()-1){
	    elseStates[i+1]->startSeg = true;
	    elseStates[i+1]->segIndex = context.segIndex;
	  }else{
	    lastJump = true;
	    tailSeg = context.segIndex;
	  }

	  if(!elseStates[i]->startSeg)
	    elseStates[i]->segIndex = context.segIndex;
	}

	if(elseStates[i]->startSeg){
	  cout<<".L"<<elseStates[i]->segIndex<<":"<<endl;
	  context.startSeg = true;
	}

	elseStates[i]->codeGen(context);
	context.startSeg = false;
      }

      if(lastJump){
       cout<<".L"<<tailSeg<<":"<<endl;
      }     
    }
  }

};


class NBlock : public NExpression {
 public:
  string name;
  StatementList statements;
  VariableList  localVariables;
  NBlock() { }
  virtual void codeGen(CodeGenContext& context){
    bool lastJump = false;
    int tailSeg = 0;

    for(int i=0;i<statements.size();i++){
      if(typeid(*statements[i])==typeid(NIFStatement)||
	 typeid(*statements[i])==typeid(NWHILEStatement)){
	context.segIndex++;
	if(i<statements.size()-1){
	  statements[i+1]->startSeg = true;
	  statements[i+1]->segIndex = context.segIndex;
	}else{
	  lastJump = true;
	  tailSeg = context.segIndex;
	}
	if(!statements[i]->startSeg)
	  statements[i]->segIndex = context.segIndex;
      }

      if(statements[i]->startSeg){
	cout<<".L"<<statements[i]->segIndex<<":"<<endl;
	context.startSeg = true;
      }

      statements[i]->codeGen(context);
      context.startSeg = false;
    }

    if(lastJump){
      cout<<".L"<<tailSeg <<":	nop"<<endl;
    }

  }
};


class NFunctionDeclaration : public NStatement {
 public:
  string name;
  VariableList variables;
 NFunctionDeclaration(string name):name(name) {}
  virtual void codeGen(CodeGenContext& context){}
};

class NVariableDeclaration : public NStatement {
 public:
  NIdentifier& id;
  NExpression *assignmentExpr;
 NVariableDeclaration(NIdentifier& id) : id(id) {}
  virtual void codeGen(CodeGenContext& context){}
};


class NProgram : public NExpression {
 public:
  BlockList blocks;
  VariableList  variables;
  NProgram() { }
  virtual void codeGen(CodeGenContext& context){
    cout<<"	.section	.rodata"<<endl;
    cout<<"	.int_wformat: .string \"\%d\\n\""<<endl;
    cout<<"	.str_wformat: .string \"%s\\n\""<<endl;
    for(int i=0;i<context.constantString.size();i++){
      string tmp(".string_const");
      tmp+=i+'0';
      context.aliasname[context.constantString[i]] = tmp;		
      cout<<"	.string_const"<<i<<": .string \""<<context.constantString[i]<<"\""<<endl;
    }
    cout<<"	.int_rformat: .string \"%d\""<<endl;


    context.numofvariable = 0 ;
    for(int i=0;i<variables.size();i++){
      if(variables[i]->id.isArray)
	context.numofvariable+=variables[i]->id.capacity;
      else
	context.numofvariable++;
    }

    if(context.numofvariable)	
      cout<<"	.comm _gp, "<<context.numofvariable*sizeof(int)<<", "<<sizeof(int)<<endl;

    cout<<"	.text"<<endl;


    
    BlockList::const_iterator it;
    for (it = blocks.begin(); it != blocks.end(); it++) {
      cout<<"	.globl "<<(*it)->name<<endl;
      cout<<"	.type "<<(*it)->name<<",@function"<<endl;
      cout<<(*it)->name<<":	nop"<<endl;
      cout<<"	pushq %rbp"<<endl;			
      cout<<"	movq %rsp, %rbp"<<endl;
      
      context.functionName = (*it)->name;

      if(context.functionName!="main"){

	cout<<"	subq $"<<context.currentlocaloffset[context.functionName] <<", %rsp"<<endl; 
	
      }

      (**it).codeGen(context);
      if((*it)->name == "main"){
	cout<<"	leave"<<endl;
	cout<<"	ret"<<endl;
      }
    }
    
  }
};


class NExpressionStatement : public NStatement {
 public:
  NExpression& expression;
 NExpressionStatement(NExpression& expression) :
  expression(expression) { }
  virtual void codeGen(CodeGenContext& context){return expression.codeGen(context);}
};


