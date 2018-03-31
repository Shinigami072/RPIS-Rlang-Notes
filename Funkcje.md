Funkcje i flow control
=========================
funkcje w R są traktowane jak zmienne

podstawy
========================
tworzymy je poprzez przypisanie do zmiennej (nazwy funkcji jej deklarację)

```
nazwa = funtion(a,b,c,d){
  #tu jest deklaracja
  #mozemy tu manipulować danymi
  v=a+2b+c*d
  #i zwracamy wartość za pomocą 'funkcji' return
  return(v)
}
```
możemy zdeklarować wartości domyślne funkcji
```
nazwa = function(a=1,b=2,c=3){
  ...
}
```
możemy wywołać funkcję:
```
nazwa(1,2,3) #argumenty nie podane przez nazwę są wypełniane po
nazwa(b=2,a=1,c=3)
nazwa(a=1,2,c=3)
value = nazwa(1,2,3)
```

Print
==========
możemy wydrukować na ekran: ` print("tekst do wypisania") `

IF-Else
=========
```
if (warunek)
{
  #standardowo wykonuje się gdy warunek jest prawdziwy
}
else{
  #opcjonalnie można zdeklarować blok else
}
```
switch
======
syntax
`switch(value, opcje...)`

switch dla intów:
- `switch(valueN, opt1,opt2,opt3...)`
- wykonuje opcję N

switch dla charów:
- `switch(valueStr, opt1=x,opt2=y,opt3=z...)`
- wyonuje opcję o nazwie str
break i next
=====
`break` - wyjście z zagnieźdzonej pętli
`next` - przejście do następnej iteracji

for
=====
syntax
`for(A in B){...}`

przypisuje A kolejne wartości w B

while
====
syntax
`while(A){}`

wykonuje się do momentu gdy warunek jest prawdziwy

repeat
=====
syntax
`repeat{}`

powtrza się do wyścia z niego przez `break` działa jak `while(true){}`
