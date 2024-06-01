def FizzBuzz():
    for i in range(1, 101):
        if i % 3 == 0 and i % 5 == 0:
            print("FizzBuzz")
        elif i % 3 == 0:
            print("Fizz")
        elif i % 5 == 0:
            print("Buzz")
        else:
            print(i)

def slownie():
    cyfry = ["zero", "jeden", "dwa", "trzy", "cztery", "pięć", "sześć", "siedem", "osiem", "dziewięć"]
    liczba = input("Podaj liczbę: ")
    for i in liczba:
        print(cyfry[int(i)], end=" ")

def rzymskie():
    liczba = int(input("Podaj liczbę: "))
    rzymskie = ["I", "IV", "V", "IX", "X", "XL", "L", "XC", "C", "CD", "D", "CM", "M"]
    arabskie = [1, 4, 5, 9, 10, 40, 50, 90, 100, 400, 500, 900, 1000]
    i = 12
    while liczba:
        div = liczba // arabskie[i]
        liczba %= arabskie[i]
        print(rzymskie[i] * div, end="")
        i -= 1

FizzBuzz()