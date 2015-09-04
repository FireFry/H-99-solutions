{-
    Problem 10

    Run-length encoding of a list. Use the result of problem P09 to implement the so-called run-length encoding data compression method. 
    Consecutive duplicates of elements are encoded as lists (N E) where N is the number of duplicates of the element E.

    Example in Haskell:

    encode "aaaabccaadeeee"
    [(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')]
-}

encode :: (Eq a) => [a] -> [(Int, a)]
encode [] = []
encode list@(x:xs) = let (first, rest) = span (==x) list in (length first, x) : encode rest