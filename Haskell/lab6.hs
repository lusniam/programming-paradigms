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

pierw x = if x >= 0 then sqrt x else error "Pierwiastek z liczby ujemnej"

delta :: Double -> Double -> Double -> Double
delta a b c = b*b - 4*a*c

pdelta :: Double -> Double -> Double -> Double
pdelta a b c = if d >= 0
                    then sqrt d
                    else error "Pierwiastek z liczby ujemnej"
                    where d=delta a b c

mzerowe :: Double -> Double -> Double -> (Double, Double)
mzerowe a b c = if d >= 0
                    then ((-b - pdelta a b c) / (2*a), (-b + pdelta a b c) / (2*a))
                    else error "Brak miejsc zerowych"
                    where d=delta a b c