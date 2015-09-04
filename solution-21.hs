{-
    Problem 21

    Insert an element at a given position into a list.

    Example in Haskell:

    P21> insertAt 'X' "abcd" 2
    "aXbcd"
-}

insertAt :: a -> [a] -> Int -> [a]
insertAt x list 1 = x : list
insertAt x (y:ys) n | n > 1 = y : insertAt x ys (n-1)