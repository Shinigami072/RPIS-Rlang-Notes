Podstawy Macierzy
=========================
```
A = matrix(
  c(1,2,3,4,5,6), #elementy macierzy
  nrow=2, #ilość rzędów
  ncol=3, #ilość kolumn
  btrow=TRUE #wypełnianie przez rzędy, domyślie wypełnia kolumnami
  )
A[1,2] # element w 1 rzedzie 3 kolumnie
A[1,] # wektor będący 1 rzędem
A[,2] # wektor będący 2 kolumną,

dimnames(A) = list(
  c("r1","r2"), # nazwy kolejnych rzędów
  c("c1","c2","c3") # nazwy kolejnych kolumn
  )

A["r1","c1"] # element w rzędzie r1 i kolumnie c1

t(A) # macierz transponowana
cbind(A,c(1,2)) # lączy kolumnami
rbind(A,c(1,2,3)) # łączy rzędami

c(A) # rozwija macierz na wektor
```
attributes(m1) - wyświetla ilość wierszy i kolumn macierzy
