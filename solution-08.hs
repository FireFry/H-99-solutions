{-
    Problem 8
    
    Eliminate consecutive duplicates of list elements.

    If a list contains repeated elements they should be replaced with a single copy of the element. The order of the elements should not be changed.

    Example in Haskell:

    > compress "aaaabccaadeeee"
    "abcade"
-}

compress :: (Eq a) => [a] -> [a]
compress [] = []
compress [x] = [x]
compress (x:y:ys) 
    | x == y = compress (x:ys)
    | otherwise = x : compress (y:ys)