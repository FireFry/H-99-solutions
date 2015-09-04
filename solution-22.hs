{-
    Problem 22

    Create a list containing all integers within a given range.

    Example in Haskell:

    Prelude> range 4 9
    [4,5,6,7,8,9]
-}

range :: Int -> Int -> [Int]
range k n | k < n = k : range (k+1) n
range k n | k == n = [n]