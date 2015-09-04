{-
    Problem 20

    Remove the K'th element from a list.

    Example in Haskell:

    *Main> removeAt 2 "abcd"
    ('b',"acd")
-}

removeAt :: Int -> [a] -> (a, [a])
removeAt 1 (x:xs) = (x, xs)
removeAt n (x:xs) | n > 0 = let (y, ys) = removeAt (n-1) xs in (y, x:ys)