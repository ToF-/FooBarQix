module FooBarQix
where

fooBarQix = result .
            outputForRule (null . result) (show . number) .
            outputForRule (const True) (concatMap convert . show . number) .
            outputForRule (divisible 7 . number) (const "Qix") .
            outputForRule (divisible 5 . number) (const "Bar") .
            outputForRule (divisible 3 . number) (const "Foo") . 
            (,) "" 

result = fst
number = snd

outputForRule restriction projection x = if restriction x then output (projection x) x else x

output s (r,n) = (r++s,n)
 
divisible :: Int -> Int -> Bool
divisible d n = mod n d == 0
 
convert :: Char -> String
convert '3' = "Foo"
convert '5' = "Bar"
convert '7' = "Qix"
convert _ = ""