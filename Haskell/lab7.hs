sign1 x = 
    if x > 0
        then 1
        else if x == 0
            then 0
            else -1

sign2 x
    | x > 0 = 1
    | x == 0 = 0
    | otherwise = -1

sign3 x =
    case compare x 0 of
        GT -> 1
        EQ -> 0
        LT -> -1

sign4 x = case x == 0 of
    True -> 0
    False -> x `div` abs x



compare2 :: Ord a => a -> a -> Ordering
compare2 x y
    | x > y = GT
    | x == y = EQ
    | otherwise = LT

mul1 :: Int -> Int -> Int
mul1 a 1 = a
mul1 a b = a + mul1 a (b-1)

mul2 :: Int -> Int -> Int
mul2 1 b = b
mul2 a b = b + mul2 (a-1) b

mul3 a b
    | a > 0 = b + mul3 (a - 1) b
    | a < 0 = (-1) * mul3 (-a) b
    | otherwise = 0




silnia1 :: Int -> Int
silnia1 n
    | n == 0 = 1
    | n > 0 = n * silnia1 (n-1)
    | otherwise = 0

silnia2 :: Int -> Int
silnia2 n =
    case n of
        0 -> 1
        n | n > 0 -> n * silnia2 (n-1)
        _ -> 0

silnia3 :: Int -> Int
silnia3 n = silnia3' n 1 1
    where
        silnia3' :: Int -> Int -> Int -> Int
        silnia3' n acc res
            | n < 0 = 0
            | n == acc = res
            | n > 0 = silnia3' n (acc+1) (res * (acc+1))

fib n = fib' n 0 1
    where
        fib' 0 a b = a
        fib' n a b = fib' (n-1) b (a+b)















