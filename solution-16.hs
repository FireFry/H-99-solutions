{-
    Problem 16

    Drop every N'th element from a list.
    
    Example in Haskell:

    *Main> dropEvery "abcdefghik" 3
    "abdeghk"
-}

dropEvery :: [a] -> Int -> [a]
dropEvery list n | n > 0 = recursiveDrop list n
    where 
        recursiveDrop [] _ = []
        recursiveDrop (x:xs) 1 = recursiveDrop xs n
        recursiveDrop (x:xs) i = x : recursiveDrop xs (i-1)