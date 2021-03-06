

module AbsGrammar where

-- Haskell module generated by the BNF converter




newtype Ident = Ident String deriving (Eq, Ord, Show, Read)
data Prog = Program [Decl]
  deriving (Eq, Ord, Show, Read)

data Expr
    = EOr Expr Expr
    | EAnd Expr Expr
    | ERel Expr RelOp Expr
    | EAdd Expr AddOp Expr
    | EMul Expr MulOp Expr
    | Not Expr
    | Neg Expr
    | EVar Ident
    | ELitInt Integer
    | ELitTrue
    | ELitFalse
    | EListConsE
    | EListConsA [Expr]
    | EListConsB Expr Expr
    | ECase Expr [PatExpr]
    | ELet [Decl] Expr
    | ELambda [Ident] Expr
    | EIf Expr Expr Expr
    | EFunApp Expr Expr
  deriving (Eq, Ord, Show, Read)

data PatExpr = CaseAlt Pat Expr
  deriving (Eq, Ord, Show, Read)

data AddOp = Plus | Minus
  deriving (Eq, Ord, Show, Read)

data MulOp = Times | Div | Mod
  deriving (Eq, Ord, Show, Read)

data RelOp = LTH | LE | GTH | GE | EQU | NE
  deriving (Eq, Ord, Show, Read)

data TypeSig = TypeSign Ident Type
  deriving (Eq, Ord, Show, Read)

data Type = FunType Type Type | IntType | BoolType | TypeList Type
  deriving (Eq, Ord, Show, Read)

data Lit = LitInteger Integer | Lit_True | Lit_False
  deriving (Eq, Ord, Show, Read)

data Pat
    = PatLit Lit
    | PatVar Ident
    | PatDummy
    | PatListE
    | PatListA [Pat]
    | PatListB Pat Pat
  deriving (Eq, Ord, Show, Read)

data Decl = FunDecl TypeSig Ident [Ident] Expr | VarDecl Ident Expr
  deriving (Eq, Ord, Show, Read)

