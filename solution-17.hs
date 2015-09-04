{-
    Problem 17
    
    Split a list into two parts; the length of the first part is given.

    Do not use any predefined predicates.

    Example in Haskell:

    *Main> split "abcdefghik" 3
    ("abc", "defghik")
-}

split :: [a] -> Int -> ([a], [a])
split list 0 = ([], list)
split (x:xs) n = ((x:first), rest)
    where (first, rest) = split xs (n-1)
