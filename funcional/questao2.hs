import Data.List

split :: Eq a => a -> [a] -> [[a]]
split x y = func x y [[]]
    where
        func x [] z = reverse $ map (reverse) z
        func x (y:ys) (z:zs) = if y==x then 
            func x ys ([]:(z:zs)) 
        else 
            func x ys ((y:z):zs)

inverte :: [a] -> [a]
inverte [] = []
inverte (x:xs) = (inverte xs)++[x]

inverterTexto :: String -> String
inverterTexto s = intercalate " " (inverte (split ' ' s))

main = do
  print(inverterTexto "la vou eu")
