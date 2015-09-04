{-
    Problem 19
    
    Rotate a list N places to the left.

    Hint: Use the predefined functions length and (++).

    Examples in Haskell:

    *Main> rotate ['a','b','c','d','e','f','g','h'] 3
    "defghabc"
     
    *Main> rotate ['a','b','c','d','e','f','g','h'] (-2)
    "ghabcdef"
-}

rotate :: [a] -> Int -> [a]
rotate list n = let shift = n `mod` length list in (drop shift list) ++ (take shift list)