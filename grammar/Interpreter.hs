module Interpreter where

import Control.Monad.Identity
import Control.Monad.Except
import Control.Monad.Reader
import Data.Maybe
import qualified Data.Map as Map

import AbsGrammar

data Value = IntVal Integer
           | BoolVal Bool
           | ListVal [Value]
           | FunVal Env Ident Expr
           | None
           deriving (Show, Eq)

type Env = Map.Map Ident Value

type Eval a = ReaderT Env (ExceptT String Identity) a

runEval :: Env -> Eval a -> Either String a
runEval env ev = runIdentity (runExceptT (runReaderT ev env))

interpret :: Prog -> String
interpret prog = case runEval Map.empty (evalProg prog) of
                    Right val -> show val
                    Left err -> "### Exception: " ++ err

evalProg :: Prog -> Eval Value
evalProg (Program decls) = evalDecls decls

evalDecls :: [Decl] -> Eval Value
evalDecls [] = throwError "no main function"
evalDecls (decl:decls) =
    do (Ident i,val) <- evalDecl decl
       case i of
           "main" -> return val
           _      -> do env <- ask
                        let env' = Map.insert (Ident i) val env
                        local (const env') (evalDecls decls)

evalDecl :: Decl -> Eval (Ident,Value)
evalDecl (VarDecl ident expr) = do val <- evalExpr expr
                                   return (ident,val)
evalDecl (FunDecl typesig ident (arg:args) body) =
    do env <- ask
       let expr = foldl (\b a -> (ELambda [a] b)) body args
           f    = FunVal env' arg expr
           env' = Map.insert ident f env
           in return (ident, f)

evalExpr :: Expr -> Eval Value
evalExpr (ELitInt n) = return $ IntVal n
evalExpr ELitTrue    = return $ BoolVal True
evalExpr ELitFalse   = return $ BoolVal False
evalExpr (EVar ident@(Ident i)) =
    do env <- ask
       case Map.lookup ident env of
           Nothing  -> throwError ("unbound variable: " ++ i)
           Just var -> return var
evalExpr (Not e) =
    do v <- evalExpr e
       case v of
           (BoolVal b) -> return $ BoolVal (not b)
           _           -> throwError "'!' applied to a non boolean value"
evalExpr (Neg e) =
    do v <- evalExpr e
       case v of
           (IntVal n) -> return $ IntVal (-n)
           _          -> throwError "'-' applied to a non numeric value"
evalExpr (EOr e1 e2) =
    do v1 <- evalExpr e1
       v2 <- evalExpr e2
       case (v1,v2) of
           (BoolVal b1,BoolVal b2) -> return $ BoolVal (b1 || b2)
           _                       -> throwError "'or' applied to non boolean values"
evalExpr (EAnd e1 e2) =
    do v1 <- evalExpr e1
       v2 <- evalExpr e2
       case (v1,v2) of
           (BoolVal b1,BoolVal b2) -> return $ BoolVal (b1 && b2)
           _                       -> throwError "'and' applied to non boolean values"
evalExpr (ERel e1 op e2) =
    do v1 <- evalExpr e1
       v2 <- evalExpr e2
       case (v1,v2) of
           (IntVal n1,IntVal n2)   -> return $ comp op n1 n2
           (BoolVal b1,BoolVal b2) -> return $ comp op b1 b2
           _                       -> throwError "relational operator applied to non comparable values"
evalExpr (EAdd e1 op e2) =
    do v1 <- evalExpr e1
       v2 <- evalExpr e2
       case (v1,v2) of
           (IntVal n1,IntVal n2) -> case op of
                                    Plus  -> return $ IntVal (n1 + n2)
                                    Minus -> return $ IntVal (n1 - n2)
           _                     -> throwError "arithmetic operator applied to non numeric values"
evalExpr (EMul e1 op e2) =
    do v1 <- evalExpr e1
       v2 <- evalExpr e2
       case (v1,v2) of
           (IntVal n1,IntVal n2) ->
               case op of
                  Times -> return $ IntVal (n1 * n2)
                  Div -> if n2 == 0
                         then throwError "divide by zero"
                         else return $ IntVal (n1 `div` n2)
                  Mod -> if n2 == 0
                         then throwError "divide by zero"
                         else return $ IntVal (n1 `mod` n2)
           _ -> throwError "arithmetic operator applied to non numeric values"
evalExpr EListConsE = return $ ListVal []
evalExpr (EListConsA l) = do v <- mapM evalExpr l
                             return $ ListVal v
evalExpr (EListConsB e es) =
    do v <- evalExpr e
       vs <- evalExpr es
       case (v,vs) of
           (ListVal _,_) -> throwError "list instead of a single value in list constructor"
           (v,ListVal l) -> return $ ListVal (v:l)
           _             -> throwError "single value instead of a list in list constructor"
evalExpr (EIf eC eA eB) =
    do c <- evalExpr eC
       a <- evalExpr eA
       b <- evalExpr eB
       case c of
           (BoolVal c) -> if c then return a else return b
           _           -> throwError "if condition is a non boolean expression"
evalExpr (EFunApp eF eX) =
    do f <- evalExpr eF
       case f of
           (FunVal env ident body) -> do x <- evalExpr eX
                                         let env' = Map.insert ident x env
                                         local (const env') (evalExpr body)
           _                       -> throwError ("non functional expression in function application: " ++ show f)
evalExpr (ELambda (arg:args) body) =
    do env <- ask
       let expr = foldl (\b a -> (ELambda [a] b)) body args
           in return $ FunVal env arg expr
evalExpr (ELet decls expr) =
    do env <- ask
       ds <- evalLetDecls decls
       let env' = foldl (\e (i,v) -> (Map.insert i v e)) env ds
       local (const env') (evalExpr expr)
evalExpr (ECase expr alts) = do val <- evalExpr expr
                                findMatch val alts

findMatch :: Value -> [PatExpr] -> Eval Value
findMatch _ [] = throwError "pattern matching in case expression failed"
findMatch val (CaseAlt pat expr:pats) =
    do env <- ask
       let decls = matchPattern val pat
       case decls of
           Nothing -> findMatch val pats
           Just ds -> let env' = foldl (\e (i,v) -> (Map.insert i v e)) env ds
                      in local (const env') (evalExpr expr)

matchPattern :: Value -> Pat -> Maybe [(Ident,Value)]
matchPattern (BoolVal True) (PatLit Lit_True) = Just []
matchPattern (BoolVal False) (PatLit Lit_False) = Just []
matchPattern (IntVal n) (PatLit (LitInteger p)) =
    if n == p
    then Just []
    else Nothing
matchPattern v (PatVar x) = Just [(x,v)]
matchPattern _ PatDummy = Just []
matchPattern (ListVal []) PatListE = Just []
matchPattern (ListVal (x:xs)) (PatListB p ps) =
    let ds1 = matchPattern x p
        ds2 = matchPattern (ListVal xs) ps
        in liftM2 (++) ds1 ds2
matchPattern (ListVal (x:xs)) (PatListA (p:ps)) =
    let ds1 = matchPattern x p
        ds2 = matchPattern (ListVal xs) (if null ps
                                         then PatListE
                                         else PatListA ps)
        in liftM2 (++) ds1 ds2
matchPattern _ _ = Nothing

evalLetDecls :: [Decl] -> Eval [(Ident, Value)]
evalLetDecls [] = return []
evalLetDecls (decl:decls) = do env <- ask
                               d@(ident,val) <- evalDecl decl
                               let env' = Map.insert ident val env
                               ds <- local (const env') (evalLetDecls decls)
                               return (d:ds)

comp :: Ord a => RelOp -> a -> a -> Value
comp op v1 v2 = case op of
                    LTH -> BoolVal (v1 < v2)
                    LE  -> BoolVal (v1 <= v2)
                    GTH -> BoolVal (v1 > v2)
                    GE  -> BoolVal (v1 >= v2)
                    EQU -> BoolVal (v1 == v2)
                    NE  -> BoolVal (v1 /= v2)
