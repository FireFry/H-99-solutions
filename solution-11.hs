{-
    Problem 11

    Modified run-length encoding.

    Modify the result of problem 10 in such a way that if an element has no duplicates it is simply copied into the result list. Only elements with duplicates are transferred as (N E) lists.

    Example in Haskell:

    P11> encodeModified "aaaabccaadeeee"
    [Multiple 4 'a',Single 'b',Multiple 2 'c',Multiple 2 'a',Single 'd',Multiple 4 'e']
-}

data ListItem a = Single a | Multiple Int a deriving Show
encodeModified :: (Eq a) => [a] -> [ListItem a]
encodeModified [] = []
encodeModified list@(x:xs) = (toListItem count x) : encodeModified rest
    where
        (first, rest) = span (==x) list
        count = length first
        toListItem 1 x = Single x
        toListItem n x = Multiple n x