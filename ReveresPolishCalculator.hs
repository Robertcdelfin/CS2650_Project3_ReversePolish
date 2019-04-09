import Data.List
:{
*Main Data.List| solveRPN :: String -> Float
*Main Data.List| solveRPN = head . foldl foldingFunction [] . words
*Main Data.List|     where    foldingFunction (x:y:ys) "*" = (x * y):ys
*Main Data.List|              foldingFunction (x:y:ys) "+" = (x + y):ys
*Main Data.List|              foldingFunction (x:y:ys) "-" = (y - x):ys
*Main Data.List|              foldingFunction (x:y:ys) "/" = (y / x):ys
*Main Data.List|              foldingFunction (x:y:ys) "^" = (y ** x):ys
*Main Data.List|              foldingFunction (x:xs) "ln" = log x:xs
*Main Data.List|              foldingFunction xs "sum" = [sum xs]
*Main Data.List|              foldingFunction xs numberString = read numberString:xs
*Main Data.List| :}
