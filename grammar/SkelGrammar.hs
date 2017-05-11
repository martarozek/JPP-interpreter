module SkelGrammar where

-- Haskell module generated by the BNF converter

import AbsGrammar
import ErrM
type Result = Err String

failure :: Show a => a -> Result
failure x = Bad $ "Undefined case: " ++ show x

transIdent :: Ident -> Result
transIdent x = case x of
  Ident string -> failure x
transProg :: Prog -> Result
transProg x = case x of
  Program decls -> failure x
transExpr :: Expr -> Result
transExpr x = case x of
  EOr expr1 expr2 -> failure x
  EAnd expr1 expr2 -> failure x
  ERel expr1 relop expr2 -> failure x
  EAdd expr1 addop expr2 -> failure x
  EMul expr1 mulop expr2 -> failure x
  Not expr -> failure x
  Neg expr -> failure x
  EVar ident -> failure x
  ELitInt integer -> failure x
  ELitTrue -> failure x
  ELitFalse -> failure x
  EListConsE -> failure x
  EListConsA exprs -> failure x
  EListConsB expr1 expr2 -> failure x
  ECase expr patexprs -> failure x
  ELet decls expr -> failure x
  ELambda idents expr -> failure x
  EIf expr1 expr2 expr3 -> failure x
  EFunApp expr1 expr2 -> failure x
transPatExpr :: PatExpr -> Result
transPatExpr x = case x of
  CaseAlt pat expr -> failure x
transAddOp :: AddOp -> Result
transAddOp x = case x of
  Plus -> failure x
  Minus -> failure x
transMulOp :: MulOp -> Result
transMulOp x = case x of
  Times -> failure x
  Div -> failure x
  Mod -> failure x
transRelOp :: RelOp -> Result
transRelOp x = case x of
  LTH -> failure x
  LE -> failure x
  GTH -> failure x
  GE -> failure x
  EQU -> failure x
  NE -> failure x
transTypeSig :: TypeSig -> Result
transTypeSig x = case x of
  TypeSign ident type_ -> failure x
transType :: Type -> Result
transType x = case x of
  FunType type_1 type_2 -> failure x
  IntType -> failure x
  BoolType -> failure x
  TypeList type_ -> failure x
transLit :: Lit -> Result
transLit x = case x of
  LitInteger integer -> failure x
  Lit_True -> failure x
  Lit_False -> failure x
transPat :: Pat -> Result
transPat x = case x of
  PatLit lit -> failure x
  PatVar ident -> failure x
  PatDummy -> failure x
  PatListE -> failure x
  PatListA pats -> failure x
  PatListB pat1 pat2 -> failure x
transDecl :: Decl -> Result
transDecl x = case x of
  FunDecl typesig ident idents expr -> failure x
  VarDecl ident expr -> failure x
