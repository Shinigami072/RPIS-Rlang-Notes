Wektory
=========================

Vector - sekwencja danych tego samego typu

sposoby deklarowania wektorów:
```
v1 <- 0:5
v2 <- c(2,2,2,1,1,1)
v3 <- seq(0,1,by=0.2)
v7 <- c("A","B","C","D","E")
v8 <- c(T,F,F,T,T)

```

```
length(v1) #długość wektora
C(C(2,3,5),"aa","BB") #łączenie wektorów
```

arytmetyka na wektorach
```
a=c(1,3,5,7)
b=c(1,2,4,8)
5*a#mnożenie przez skalar
a+b # dodanie elementów do siebie
a-b # odejmowanie elementów
a*b # mnożenie elementów
a/b # dzielenie elementów
#jeżeli jeden z wektorów jest krótrzy to dla dowonej operacji jego elementy będą powturzone cyklicznie
```

sposoby pobierania danych z wektora:
```
v1[c(T,T,T,F,F,F)] //dane elementy
v1[3:1] //od 3 elementu do pierwszego
v1[-1] //bez 1 elementu
v1[-2:-1]  //bez zakresu
```
można nazwać kolejne elementy vektora
```
names(v1) = c{"First","second"}
v["First"]
```
