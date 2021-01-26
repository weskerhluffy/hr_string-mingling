import Control.Monad

-- XXX: https://lotz84.github.io/haskellbyexample/ex/string-functions
-- Enter your code here. Read input from STDIN. Print output to STDOUT
mingle'::String -> String -> String -> String
mingle' "" "" res = res
mingle' (p1c:p1cx) (p2c:p2cx) res = mingle' p1cx p2cx $res++[p1c,p2c]

-- joinWith :: [String] -> String -> String
-- mingle::(String a)=> a -> a -> a
mingle:: String -> String -> String
mingle p1 p2 = mingle' p1 p2 ""


main :: IO ()
main = do
  palabras<- replicateM 2 getLine
  let (p1:p2:[])=palabras
  -- putStrLn $ zip p1 p2
  -- putStrLn $ foldl ( \acc (c1,c2) -> (acc++[c2,c2])) "" (zip p1 p2)
  -- XXX: https://maex.me/2019/04/rewriting-functions-with-fold-and-reduce/
  putStrLn $ concat $ zipWith (\c1 c2->[c1,c2]) p1 p2 

