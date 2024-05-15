-- pol 1: 
-- mod po lewej stronie zostanie wykonane jako funkcja,
-- a funkcje maja priorytet 10, gdy operator ^ ma priorytet 8
-- zatem bedzie (mod 3 2)^3 = 1^3 = 1
-- natomiast po prawej stronie `mod` jest wykonane jako operator z priorytetem 7,
-- zatem bedzie 3 `mod` (2^3) = 3 `mod` 8 = 3
-- a 1 > 3 da wynik False

-- pol 2
-- polecenie 2^3^4 da wynik 2^(3^4) = 2^81 = 2417851639229258349412352
-- poniewaz operator ^ jest prawostronnie wiazacy,
-- zatem polecenie zostanie zinterpretowane jako 2^(3^4) = 2^81

abs3 x = -x

pierw x =
    if x >= 0
        then sqrt x
        else error "Pierwiastek z liczby ujemnej"

delta a b c = b*b - 4*a*c

pdelta a b c =
    if d >= 0
        then sqrt d
    else error "delta<0"
    where d = delta a b c

mzerowe a b c =
    if d > 0
        then [x1,x2]
    else if d == 0
             then [x0]
         else error "delta<0"
    where
        d = delta a b c
        p = pdelta a b c
        x1 = (-b-p)/(2*a)
        x2 = (-b+p)/(2*a)
        x0 = -b/(2*a)


mzerowe2 a b c
    | d > 0 = [x1,x2]
    | d == 0 = [x0]
    | otherwise = error "delta<0"
    where
        d = delta a b c
        p = pdelta a b c
        x1 = (-b-p)/(2*a)
        x2 = (-b+p)/(2*a)
        x0 = -b/(2*a)

mzerowe3 a b c =
    case compare d 0 of
        GT -> [x1,x2]
        EQ -> [x0]
        LT -> error "delta<0"
    where
        d = delta a b c
        p = pdelta a b c
        x1 = (-b-p)/(2*a)
        x2 = (-b+p)/(2*a)
        x0 = -b/(2*a)