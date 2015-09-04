{-
    Problem 12

    Decode a run-length encoded list.

    Given a run-length code list generated as specified in problem 11. Construct its uncompressed version.

    Example in Haskell:

    P12> decodeModified [Multiple 4 'a',Single 'b',Multiple 2 'c', Multiple 2 'a',Single 'd',Multiple 4 'e']
    "aaaabccaadeeee"
-}

data ListItem a = Single a | Multiple Int a
    deriving (Show)
    
decodeModified :: (Eq a) => [ListItem a] -> [a]
decodeModified list = concatMap decode list
    where decode (Single x) = [x]
          decode (Multiple n x) = replicate n x