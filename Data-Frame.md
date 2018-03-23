Data frame
=========================
przechowywuje tablice danych
```
> n = c(2, 3, 5)
> s = c("aa", "bb", "cc")
> b = c(TRUE, FALSE, TRUE)
> df = data.frame(n, s, b)       # df is a data frame
```

można dostać się do jego elementów tak jak do macierzy

umozliwia importowanie danych:
 - nie podane jeszcze na zajęcia:
    - XLS
    - table
    - SPSS
 - csv ```  mydata= read.csv("mydata.csv",header=TRUE,sep=";") #wczytanie pliku csv nagłowkiem, i separatorem ; ```
```
getwd() # sprawdza working directory
setwd("s") # ustawia working dir
```
