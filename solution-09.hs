{-
    Problem 9
    
    Pack consecutive duplicates of list elements into sublists. If a list contains repeated elements they should be placed in separate sublists.

    Example in Haskell:

    *Main> pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']
    ["aaaa","b","cc","aa","d","eeee"]
-}

pack :: (Eq a) => [a] -> [[a]]
pack [] = []
pack (x:xs) = bufferedPack [x] xs
    where 
        bufferedPack buffer [] = [buffer]
        bufferedPack (x:xs) (y:ys)
            | x == y = bufferedPack (y:x:xs) ys
            | otherwise = (x:xs) : bufferedPack [y] ys