//===- llvm/Analysis/EBBs.h - EBB Info Calculation --*- C++ -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file defines the EBB Pass class, which provides fast and efficient
// ebb queries.
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_ANALYSIS_EBBS_H
#define LLVM_ANALYSIS_EBBS_H

#include "llvm/ADT/DenseMap.h"
#include "llvm/ADT/DepthFirstIterator.h"
#include "llvm/ADT/GraphTraits.h"
#include "llvm/ADT/SmallPtrSet.h"
#include "llvm/ADT/SmallVector.h"
#include "llvm/IR/Function.h"
#include "llvm/Pass.h"
#include "llvm/Support/CFG.h"
#include "llvm/Support/Compiler.h"
#include "llvm/Support/raw_ostream.h"
#include <algorithm>
#include "llvm/IR/Module.h"

namespace llvm{

//===----------------------------------------------------------------------===//
/// EBBTree - Calculate the EBB tree for a function.
///

template<class NodeT>
class EBBTree{
public:
  NodeT *Root;//entry basic block
  std::vector<NodeT *> Ebb;// sub basic block in preorder

  // TODO, implement a map table to connect a basic block 
  // with its ancestors in an ebb
  // not finished yet.
  std::map<NodeT*, std::set<NodeT *> > TreeTable; 

public:
  EBBTree(NodeT* root){
    Root=root;
  }

  EBBTree(){}

  virtual ~EBBTree(){}

  NodeT *getRoot() { return Root;  }

  std::vector<BasicBlock *> getTree() { return Ebb; }

  void addNewAncestor(NodeT *bb,NodeT *anc){
    errs()<<bb->getName()<<"has ancestor"<<anc->getName()<<"\n";
    TreeTable[bb].insert(anc);
  }
  void addNewNode(NodeT *bb)
  {
    Ebb.push_back(bb);
  }

  // not use it this time.
  /// extends - Returns true iff A extends B.  Note that this is not a
  /// constant time operation!
  inline bool extends( BasicBlock *A, std::set<NodeT *> B) {
    if(B.find(A) != B.end())
	  return true;
	else
	  return false;
  }
  bool isAncestor(const BasicBlock *anc,const BasicBlock *cur){
    if(cur == anc){
      return true;
    }
    if(!cur->getSinglePredecessor())
      return false;     
    const BasicBlock *pred = cur->getSinglePredecessor();
    return isAncestor(anc,pred);
  }


  bool isAncestor(BasicBlock *anc,BasicBlock *cur){
    if(cur == anc){
      //addNewAncestor(cur,anc);
      return true;
    }
    if(!cur->getSinglePredecessor())
      return false;     
    BasicBlock *pred = cur->getSinglePredecessor();
    //addNewAncestor(cur,pred);
    return isAncestor(anc,pred);
  }
};


EXTERN_TEMPLATE_INSTANTIATION(class EBBTree<BasicBlock>);

//===-------------------------------------
/// EBBForest Class - Concrete subclass of EBBTree that is used to
/// compute a normal EBB forest.
///
class EBBForest : public FunctionPass{
  std::string functionName;

public:
  static char ID; // Pass ID, replacement for typeid
  EBBForest() : FunctionPass(ID) {
    initializeEBBForestPass(*PassRegistry::getPassRegistry());
  }

  inline std::string getFunctionName(){return functionName;}
  inline void setFunctionName(std::string name){functionName=name;}
  EBBTree<BasicBlock > EBB;
  //// the main data, all import information is here.
  std::map<std::string, std::vector<EBBTree<BasicBlock> > >  ForestTable;  
  std::vector<EBBTree<BasicBlock> > Ebbs;
  ~EBBForest() {}

  void insert(EBBTree<BasicBlock> C) {
    Ebbs.push_back(C);
  }

  std::vector<EBBTree<BasicBlock> > &getForest() { return Ebbs; }


  virtual bool doFinalization(Module &M);
  void WriteEbb(raw_fd_ostream &File);

  virtual bool runOnFunction(Function &F);
  virtual void getAnalysisUsage(AnalysisUsage &AU) const {
    AU.setPreservesAll();
  }

};

} // End llvm namespace

#endif
