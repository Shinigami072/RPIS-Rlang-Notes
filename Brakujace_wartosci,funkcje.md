Brakujace_wartosci,funkcje
=========================

- NA - brak danej wartości, not avaible np. próba wpisania "abc" jako typu numeric as.numeric("abc"), null
- NaN - specyficzna dana która nie jest liczbą,wartosci niedozwolone,symbol nieoznaczony,not a numer np. 0/0
`NaN jest podtypem NA`

#complete.cases()
Funkcja complete.cases() zwraca wektor logiczny wskazujący, które dane w wektorze, macierzy lub tabeli danych zawierają kompletne dane (bez brakujących obserwacji, czyli bez wartości NA)

`Sposób usuwnia NA/NaN ze zbioru danych:`
- z wektora
złe <- is.na(v1)
v1 <- v1[!złe]

- z data.frame
dobre <- complete.cases(df)
df <- df[dobre]

`Funkcja działająca tam samo jak dwie powzsze usuwające a o wiele szybsza - Funkcja na.omit() zwraca obiekt pozbawionych wartości w tych wierszach, w których brakuje wartości w jednej lub wielu zmiennych
Tworzenie nowej tabeli danych bez wierszy z brakującymi danymi:
noweDane <- na.omit(mojeDane)`

```Przypomnienie: mydata$PM10 - wczyta daną PM10 ze zbioru mydata```
```W typie data.frame/list nigdy nie wystąpi NaN```