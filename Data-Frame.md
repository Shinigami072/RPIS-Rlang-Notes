Data frame
=========================

przechowuje tablice danych
```
> n = c(2, 3, 5)
> s = c("aa", "bb", "cc")
> b = c(TRUE, FALSE, TRUE)
> df = data.frame(n, s, b)       # df is a data frame//ma kolumny o nazwach n,s,b
```

można dostać się do jego elementów tak jak do macierzy

```R
colMeans(dat)
```
średnie a kolumnach

```R
apply(dat,kierunek,funkcja)
dat -macierz
kierunek - kierunek przechodzenia danych 1- wiersz - 2 kolumny c(1,2) kolumny i wiersze
funkcja - funkcja stosowana na danych
```
umożliwia importowanie danych:
 - nie podane jeszcze na zajęcia:
    - XLS
    - table
    - SPSS
 - csv ```  mydata= read.csv("mydata.csv",header=TRUE,sep=";") #wczytanie pliku csv nagłowkiem, i separatorem ; ```
```
getwd() # sprawdza working directory
setwd("s") # ustawia working dir
```
