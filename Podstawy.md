PODSTAWY R
=========================

`#komentarz`


```
x=1  #przypisanie wartości
x<-1 #przypisanie innej warotosci tej samej zmiennej
```

Podstawowe typy danych:
- Numeric - typ liczbowy 1.0
- integer - l całkowita 1
- Complex - l zespolona (2+1i)
- logical - typ logiczny TRUE FALSE
- Character - znak/string "abc"

```
as.typ_danych(zmienna) #zwraca wartość zmiennej jako dany typ danych

sprintf("%s : %d","im",10) // działa jak printf w C
substr("ABCDEF",start=3,stop=12)
sub("ABC","CDE","ABC=C*D*E")//zamienia pierwsze ABC na CDE
```

stuff:
 - `class(data)` klasa danych
 - `str(data)` reprezentacja pokazująca co dane dane zawierają i jakiego go typu
 - `help(funkcja)` - wyświetla help
 - `tapply(dane,rozdial,funkcja)` - wykonuje daną funkcję na danych i rozdziela względem danej wartości, umieszcza wynik w wektorze
 - `%>%` działa jak pipe w Linux dla niektórych komend

Ważne pakiety:
 - ggplot
 - ggvis
 - shiny
