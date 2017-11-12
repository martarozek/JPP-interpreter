module Main where

import System.IO.Error (userError,ioError)
import System.Environment (getArgs)

import Lexgrammar
import Pargrammar
import Absgrammar
import Interpreter

import ErrM

main :: IO ()
main = do
    f     <- getArgs >>= getFilename
    prog  <- readFile f >>= parse
    putStrLn $ interpret prog

getFilename :: [String] -> IO String
getFilename (a:as) = return a
getFilename _      = ioError (userError "Please provide filename.")

parse :: String -> IO Prog
parse prog = case pProg $ myLexer prog of
                Ok p -> return p
                Bad err -> ioError (userError err)
