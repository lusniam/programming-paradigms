iloczyn x =
    if x == [] then error "Pusta lista"
    else foldr (*) 1 x

triangles = [(a,b,c) | c <- [1..60], b <- [1..c], a <- [1..b],a*a+b*b==c*c]

liczbaNieparzystychKwadratow = length [x | x <- [1..10000], odd (x^2)]

czyUp x = elem x ['A'..'Z']

rm1 x = filter (\y -> y /= x) ['A'..'Z']

trojki = [(a,b,c) | a <- [0..20], b <- [0..20], c <- [0..20], a^2 + b^2 == c^2]

kwadraty = map kwadrat [0..20]
    where kwadrat x = x^2

kwadraty2 = map (\x -> x^2) [0..20]

silnieParzyste = [product [1..x] | x <- [2,4..20]]

sredniaNieparzyste = sum [x | x <- [1,3..100]] / sum [1 | x <- [1,3..100]]









najwiekszaPodzielna = maximum [x | x <- [1000000,999999..1], x `mod` 3829 == 0]

najwiekszaPodzielna2 = head (filter (\x -> x `mod` 3829 == 0) [1000000,999999..1])

liczbaNieparzystychKwadratow2 = length (filter odd (map (^2) [1..10000]))