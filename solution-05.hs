{-
    Problem 5
    
    Reverse a list.

    Example in Haskell:

    Prelude> myReverse "A man, a plan, a canal, panama!"
    "!amanap ,lanac a ,nalp a ,nam A"
    Prelude> myReverse [1,2,3,4]
    [4,3,2,1]
-}

myReverse :: [a] -> [a]
myReverse xs = reverseGenerate [] xs
    where
        reverseGenerate buffer (x:xs) = reverseGenerate (x:buffer) xs
        reverseGenerate buffer [] = buffer