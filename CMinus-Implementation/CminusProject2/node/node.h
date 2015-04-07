#include <iostream>
#include <vector>
#include <map>
#include <string>
#include <typeinfo>
using namespace std;


class CodeGenContext {
public:
  vector<string> constantString;
  vector<string> regList;
  map<string,int> usedReg;
  map<string,string>aliasname;
  int numofvariable;
  map<string,int>varoffset;
  int readforvariable;
  CodeGenContext() {prevlReg=0,prevrReg=0,readforvariable=0;}
  int prevlReg;
  int prevrReg;
  int getReg(int i=2){
    for(;i<regList.size();i++){
      if(usedReg[regList[i]]==0){
	usedReg[regList[i]]=1;
	return i;
      }		
    }	
  }
  void setReg(int i=2){
    for(;i<regList.size();i++)
  	usedReg[regList[i]]=0;
  }

  void setRegZero(int i){
    usedReg[regList[i]] = 0;
  }
  void setRegOne(int i){
    usedReg[regList[i]] = 1;
  }
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
  int reg;		
  virtual void codeGen(CodeGenContext& context) { }
};

class NStatement : public Node {
 public:
  virtual void codeGen(CodeGenContext& context) { }
};

class NInteger : public NExpression {
 public:
  long long value;
 NInteger(long long value) : value(value) { }
  virtual void codeGen(CodeGenContext& context){
    cout<<"	movl $"<<value<<", \%"<<context.regList[reg]<<endl;
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
    cout<<"	movl $"<<context.aliasname[name]<<", \%ebx"<<endl;
    cout<<"	movl %ebx, \%esi"<<endl;
    cout<<"	movl $0, \%eax"<<endl;
    cout<<"	movl $.str_wformat, %edi"<<endl;
    cout<<"	call printf"<<endl;
  }
};

class NIdentifier : public NExpression {
 public:
  string name;
  int type;	
 NIdentifier(const string& name,int type=0) : name(name),type(type){ }
  virtual void codeGen(CodeGenContext& context){
    string tmp = context.usedReg["rbx"]==0&&
      context.usedReg["ebx"]==0?"rbx":"rcx";   

    cout<<"	movq $_gp,\%"<<tmp<<endl;
    cout<<"	addq $"<<context.varoffset[name]<<", \%"<<tmp<<endl;
    if(context.readforvariable)
      return;
    cout<<"	movl (%"<<tmp<<"), %"<<context.regList[reg]<<endl;		
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
    if(op=="+" || op=="-" || op=="*"){
      //cout << typeid(lhs).name()<<endl;      
      lhs.reg = context.prevrReg?context.prevrReg
	:(context.prevlReg?context.prevlReg:context.getReg(5)); 
      if(typeid(lhs)==typeid(NBinaryOperator))
	context.prevlReg = lhs.reg;
      lhs.codeGen(context);
      if(context.prevrReg)
	context.prevrReg = 0;     
      else
	context.prevlReg = 0;     

      //rhs.reg = context.prevrReg?context.prevrReg:context.getReg(5);
      rhs.reg = context.getReg(5);
      if(typeid(rhs)==typeid(NBinaryOperator))
	context.prevrReg = rhs.reg;
      rhs.codeGen(context);

      if(op=="+")
	cout<<"	addl \%"<<context.regList[rhs.reg]<<", \%"<<context.regList[lhs.reg]<<endl;
      else if(op=="-")
      cout<<"	subl \%"<<context.regList[rhs.reg]<<", \%"<<context.regList[lhs.reg]<<endl;
      else if(op=="*")
      cout<<"	imull \%"<<context.regList[rhs.reg]<<", \%"<<context.regList[lhs.reg]<<endl;
	
      context.setRegZero(rhs.reg);
    }

    if(op=="/"){

      lhs.reg = context.prevrReg?context.prevrReg
	:(context.prevlReg?context.prevlReg:context.getReg(5)); 
      if(typeid(lhs)==typeid(NBinaryOperator))
	context.prevlReg = lhs.reg;
      lhs.codeGen(context);
      if(context.prevrReg)
	context.prevrReg = 0;     
      else
	context.prevlReg = 0;     

      //rhs.reg = context.prevrReg?context.prevrReg:context.getReg(5);
      rhs.reg = context.getReg(5);
      if(typeid(rhs)==typeid(NBinaryOperator))
	context.prevrReg = rhs.reg;
      rhs.codeGen(context);

      string tmp = context.usedReg["ebx"]==0 && 
	context.usedReg["rbx"]==0?"ebx":"ecx"; 

      cout<<"	movl \%"<<context.regList[lhs.reg]<<", %eax"<<endl;
      cout<<"	movl \%"<<context.regList[rhs.reg]<<", \%"<<tmp<<endl;
      cout<<"	cdq"<<endl;
      cout<<"	idivl \%"<<tmp<<endl;
      cout<<"	movl \%eax"<<", \%"<<context.regList[lhs.reg]<<endl;
      context.setRegZero(rhs.reg);
    }


    if(op=="&&" || op=="||" || op=="^"){

      lhs.reg = context.prevrReg?context.prevrReg
	:(context.prevlReg?context.prevlReg:context.getReg(5)); 
      if(typeid(lhs)==typeid(NBinaryOperator))
	context.prevlReg = lhs.reg;
      lhs.codeGen(context);
      if(context.prevrReg)
	context.prevrReg = 0;     
      else
	context.prevlReg = 0;     

      //rhs.reg = context.prevrReg?context.prevrReg:context.getReg(5);
      rhs.reg = context.getReg(5);
      if(typeid(rhs)==typeid(NBinaryOperator))
	context.prevrReg = rhs.reg;
      rhs.codeGen(context);

      string tmp = context.usedReg["ebx"]==0 && 
	context.usedReg["rbx"]==0?"ebx":"ecx"; 

      cout<<"	movl \%"<<context.regList[lhs.reg]<<", %eax"<<endl;
      cout<<"	movl \%"<<context.regList[rhs.reg]<<", \%"<<tmp<<endl;
      if(op=="&&")
	cout<<"	andl  \%eax, \%"<<tmp<<endl;
      else if(op=="||")
	cout<<"	orl  \%eax, \%"<<tmp<<endl;
      else if(op=="^")
	cout<<"	xorl  \%eax, \%"<<tmp<<endl;

      cout<<"	movl \%"<<tmp<<", \%"<<context.regList[lhs.reg]<<endl;
      context.setRegZero(rhs.reg);
    }


    if(op=="EQ" || op=="GT" || op=="GE"|| op=="LT" 
       || op=="LE"|| op=="NE" || op=="!"){

      lhs.reg = context.prevrReg?context.prevrReg
	:(context.prevlReg?context.prevlReg:context.getReg(5)); 
      if(typeid(lhs)==typeid(NBinaryOperator))
	context.prevlReg = lhs.reg;
      lhs.codeGen(context);
      if(context.prevrReg)
	context.prevrReg = 0;     
      else
	context.prevlReg = 0;     

      //rhs.reg = context.prevrReg?context.prevrReg:context.getReg(5);
      rhs.reg = context.getReg(5);
      if(typeid(rhs)==typeid(NBinaryOperator))
	context.prevrReg = rhs.reg;
      rhs.codeGen(context);

      string tmp = context.usedReg["ebx"]==0 && 
	context.usedReg["rbx"]==0?"ebx":"ecx"; 

      cout<<"	movl \%"<<context.regList[lhs.reg]<<", %eax"<<endl;
      cout<<"	movl \%"<<context.regList[rhs.reg]<<", \%"<<tmp<<endl;

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

      cout<<"	movl \%"<<tmp<<", \%"<<context.regList[lhs.reg]<<endl;
      context.setRegZero(rhs.reg);
    }        
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
      if(typeid(arguments)==typeid(NBinaryOperator)){
	arguments.reg=context.getReg();		
	context.prevlReg = arguments.reg;
      }
      else{
	arguments.reg=2;
	context.setRegOne(2);
      }
      arguments.codeGen(context);
      if(id.type==1){	
	cout<<"	movl %"<<context.regList[arguments.reg]<<", \%esi"<<endl;
	cout<<"	movl $0, \%eax"<<endl;
	cout<<"	movl $.int_wformat, %edi"<<endl;
	cout<<"	call printf"<<endl;		
      }
      context.setRegZero(arguments.reg);
    }else{
      context.readforvariable=1;
      arguments.codeGen(context);
      context.readforvariable=0;
      cout<<"	movl $.int_rformat, \%edi"<<endl;
      cout<<"	movl \%ebx, \%esi"<<endl;
      cout<<"	movl $0, \%eax"<<endl;
      cout<<"	call scanf"<<endl;
    }
    context.setReg();
  }
}; 


class NAssignment : public NExpression {
 public:
  NIdentifier& lhs;
  NExpression& rhs;
 NAssignment(NIdentifier& lhs, NExpression& rhs) :
  lhs(lhs), rhs(rhs) { }
  virtual void codeGen(CodeGenContext& context){
    rhs.reg = context.getReg(5);
    context.prevlReg = rhs.reg;
    context.readforvariable=1;		
    lhs.codeGen(context);
    context.readforvariable=0;		
    context.usedReg["rbx"]=1;
    rhs.codeGen(context);
    cout<<"	movl \%"<<context.regList[rhs.reg]<<", (\%rbx)"<<endl;
    context.usedReg["rbx"]=0;
    context.setRegZero(rhs.reg);	
    context.setReg();
  }
};

class NBlock : public NExpression {
 public:
  StatementList statements;
  VariableList  localVariables;
  NBlock() { }
  virtual void codeGen(CodeGenContext& context){
    
    StatementList::const_iterator it;
    for (it = statements.begin(); it != statements.end(); it++) {
      (**it).codeGen(context);
    }
  }
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
    context.numofvariable = variables.size();	
    if(context.numofvariable)	
      cout<<"	.comm _gp, "<<context.numofvariable*sizeof(int)<<", "<<sizeof(int)<<endl;
    cout<<"	.text"<<endl;
    cout<<"	.globl main"<<endl;
    cout<<"	.type main,@function"<<endl;
    cout<<"main:	nop"<<endl;
    cout<<"	pushq %rbp"<<endl;			
    cout<<"	movq %rsp, %rbp"<<endl;
    
    BlockList::const_iterator it;
    for (it = blocks.begin(); it != blocks.end(); it++) {
      (**it).codeGen(context);
    }
    
    cout<<"	leave"<<endl;
    cout<<"	ret"<<endl;
  }
};

class NExpressionStatement : public NStatement {
 public:
  NExpression& expression;
 NExpressionStatement(NExpression& expression) :
  expression(expression) { }
  virtual void codeGen(CodeGenContext& context){return expression.codeGen(context);}
};

class NVariableDeclaration : public NStatement {
 public:
  NIdentifier& id;
  //const NIdentifier& type;
  NExpression *assignmentExpr;
 NVariableDeclaration(NIdentifier& id) : id(id) {}
  //NVariableDeclaration(const NIdentifier& type, NIdentifier& id) :
  //    type(type), id(id) { }
  //NVariableDeclaration(const NIdentifier& type, NIdentifier& id, NExpression *assignmentExpr) :
  //    type(type), id(id), assignmentExpr(assignmentExpr) { }
  virtual void codeGen(CodeGenContext& context){}
};

class NFunctionDeclaration : public NStatement {
 public:
  const NIdentifier& type;
  const NIdentifier& id;
  VariableList arguments;
  NBlock& block;
 NFunctionDeclaration(const NIdentifier& type, const NIdentifier& id,
		      const VariableList& arguments, NBlock& block) :
  type(type), id(id), arguments(arguments), block(block) { }
  virtual void codeGen(CodeGenContext& context){}
};

