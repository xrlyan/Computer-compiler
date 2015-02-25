//===- EBBs.cpp - EBB Calculation -----------------------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file implements simple ebb construction algorithms for finding
// extend basic block. 
//
//===----------------------------------------------------------------------===//

#include "llvm/Analysis/EBBs.h"
#include "llvm/ADT/DepthFirstIterator.h"
#include "llvm/ADT/SmallPtrSet.h"
#include "llvm/ADT/SmallVector.h"
#include "llvm/Analysis/DominatorInternals.h"
#include "llvm/Assembly/Writer.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Support/CFG.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/Compiler.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/raw_ostream.h"
#include <algorithm>
using namespace llvm;


//===----------------------------------------------------------------------===//
//  EbbForest Implementation
//===----------------------------------------------------------------------===//
//
// Provide public access to EbbForest information.  Implementation details
// can be found in Ebbs.h.
//
//===----------------------------------------------------------------------===//

TEMPLATE_INSTANTIATION(class llvm::EBBTree<BasicBlock>);

char EBBForest::ID = 0;
  INITIALIZE_PASS(EBBForest, "ebbs","EBB Forest Construction", true, true)

//static std::map<std::string , std::map<BasicBlock*, std::set<BasicBlock *> > > AncestorTable;
static cl::opt<bool> EnableOutPut("ebboutput",cl::init(false), cl::Hidden);


bool EBBForest::runOnFunction(Function &F) {
   //First pass, to find the entry point of Ebb in a fuction sequence
   // figoure out how many ebbs in this function
    for (df_iterator<BasicBlock*> DI = df_begin(&F.getEntryBlock()),
	   DE = df_end(&F.getEntryBlock()); DI != DE; ++DI) {
      BasicBlock *currentBlock = *DI;
      // find the entry block for each ebb tree
      if(!currentBlock->getSinglePredecessor())
	{
          EBBTree<BasicBlock> tempTree(currentBlock);
	   tempTree.Ebb.push_back(currentBlock);
	  insert(tempTree);
 	}
    } 
    // send pass, try to find out the subtrees behind the entry block found above.
    // this will a vector containing all ebbs in this function.
    for(std::vector<EBBTree<BasicBlock> >::iterator i = Ebbs.begin(), e = Ebbs.end(); i != e; ++i){
      for (df_iterator<BasicBlock*> DI = df_begin(&F.getEntryBlock()),
	     DE = df_end(&F.getEntryBlock()); DI != DE; ++DI) {
	BasicBlock *currentBlock = *DI;
        if(i->isAncestor(i->getRoot(),currentBlock))
	  { 
	     if(i->getRoot()!=currentBlock)
	      {  
		i->Ebb.push_back(currentBlock);
	      }
	  }
      }        
    }

    // since there will be many functions in a file, I use a map to
    // connect the ebbs to the name of it.
    ForestTable[F.getName()]=Ebbs;
    Ebbs.clear();
    return false;
}


// TODO try to figure out the bug why could not 
// work well with -std-compiler-opts
bool EBBForest::doFinalization(Module &M){

  // only when use opt -ebbs --ouputebb=true
  // this is because when I test all the tests together
  // it will be crushed here.
  if(EnableOutPut){
    // find the file name which is saved in module
    std::string Filename = M.getModuleIdentifier()+".ebb";
    errs() << "Writing '" << Filename << "'...";
    
    std::string ErrorInfo;
    raw_fd_ostream File(Filename.c_str(), ErrorInfo);
    
    if(ErrorInfo.empty())
      WriteEbb(File);
    else
      errs() << "  error opening file for writing!";
  }
  return false;
}

void EBBForest::WriteEbb(raw_fd_ostream & File) { 
 
  //dump all basic block information from EbbForest. 
  // write it to a file in a readable way.
  std::map<std::string, std::vector<EBBTree<BasicBlock> > >::iterator   it=ForestTable.begin();   
  for(;it!=ForestTable.end();++it){   
    File <<it->first <<": "<<"\n"; 
    std::vector<EBBTree<BasicBlock> > ebbs = it->second;
    for(std::vector<EBBTree<BasicBlock> >::iterator i = ebbs.begin(), e = ebbs.end(); i != e; ++i){
      std::vector<BasicBlock*> currentTree= i->getTree();
      File << "{";
      int position = 0;
      int size = currentTree.size();
      for(std::vector<BasicBlock*>::iterator j = currentTree.begin(), k = currentTree.end(); j != k; ++j){
	position++;
	BasicBlock *currentBlock = *j;
	if(position < size)
	  File << currentBlock->getName() << "," ;
	else
	  File << currentBlock->getName()<< "}"<<"\n";
      }
    }
    File << "\n";
  }      
}



