ggvis
=========================
https://ggvis.rstudio.com/ggvis-basics.html
instalacja:
`install.packages("ggvis",dependencies =TRUE)`
załadoawnie:
`library(ggvis)`

podstawy pracy:
 dane do wyświetlenia należy przygotować za pomocą funkcji ggvis
 `p = ggvis(argumenty)` [argumenty tzn: nazwa zbioru danych, zmienna przedstawiona na osi X, zmienna przedstawiona na osi Y]
 a następnie przekazać do odpowiedniej funkcji layer `layer_points(p)`
 można wykorzystać operator pipe do tego `mtcars %>% ggvis(x=~X,y=~Y,...)%>%layer_points()`
 `~` są używane by pobrać dane bezpośrednio ze zbioru danych `mtcars` (jeśli używamy pipe to następnie są automatycznie przekazane do użytych funkcji np. layer_points),
 jeżeli chcemy ustawić jakąś zmienną na 'sztywno'- nie skalować jej razem z innymi wartościami musimy użyć operatora `:=` zamiast `=`
`=` - ustawienie czegoś dla wykresu tak, żeby zależało od wyświetlanych zmiennych
` := ` - ustawienie czegoś 'globalnie', dla wszystkich punktów pomiarowych z wykresu (np. przy suwakach)

 przy wyświtlaniu są następujące argumenty opcjonalne:
 - `fill` - kolor wypełnienia
 - `stoke` - kolor obramówki
 - `size` - wielkość
 - `shape` -kształt

```
Esc - koniec pracy  z bieżącym wykresem
```

przykład
 ```
mtcars %>% ggvis(~mpg,~disp , stroke=~vs) %>% layer_points()
#wyświetli plot zmiennej mpg od disp, z obramówką pokolorowaną w zalećniści od vs (continuum)
mtcars %>% ggvis(~mpg,~disp , stroke=~factor(vs)) %>% layer_points()
#wyświetli plot zmiennej mpg od disp, z obramówką pokolorowaną w z podziałem na różne wartości vs (kazda wartotsc - inny kolorek)
 ```  
 jest możliwe dodać interaktywne suwaki do wygenerowanych wykresów
 ```
 mtcars %>% ggvis(~mpg,~disp , stroke=~vs,size:= input_slider(10,100)) %>% layer_points()
 #uzależnia parametr size w zależności od interaktywnego suwaka
 ```

rodzaje warstw wykresów:
  - layer_points() - wykres punktowy
  - #layer_lines() -wykres liniowy
  - #layer_smooths() - wygładzona linia
  - layer_histograms() - histogram `width = wartość ` szerokość każdego słupka , `center = wartość ` centrum bloku, `boundary = wartość ,` położenie granicy pierwszego słupka
  ` > mtcars %>% ggvis(~mpg ,`` fill := "yellow" ``) %>% layer_histograms(width = 4, boundary = 10.4) ` - zmiana koloru słupków `
  ` > mtcars %>% ggvis(~mpg, fill := "yellow") %>% layer_histograms (width = input_slider(1,8,step=0.5,label="szerokość"), boundary = 10.4) [zakres,co ile przesuwa się suwak, nazwa ramki z suwakiem]
  - layer_boxplots() - wykres pudełkowy
    ` mtcars %>% ggvis(~factor(vs), ~mpg, fill= "blue") %>% layer_boxplots() %>% add_axis("x", title = "Cylinder") %>% add_axis("y", title = "MPG cokolwiek to jest") - [budowa ggvis(~zmienna która stanowi kryterium podziału dla drugiej zmiennej, ~zmienna która jest dzielona wd pierwszej zmiennej, tyle wykresów pudełkowych ile podziałow)] `

opisy osi:
 - add_axis(vis, "x", title = "My x variable"), dodanie opisu do osi x ] ?czym jest vis?
 -  add_axis("x", subdivide = 9, values = 1:6, tick_size_major = 10,
    tick_size_minor = 5, tick_size_end = 15, tick_padding = 20) ustawienia skali
 - add_legend(vis, "fill", title = "Some interesting colours") - opis zmiennej

input types:
 - input_slider(min, max, step = 0.10, label = "width")
 - input_checkbox()
 - input_numeric()
 - input_text()

`tworzenie tablicy`:
 - tab <- tapply(vector, index, function)  - np. (cnt,season,summary) utworzy tablice w zmienne tab na podstawie danych z wektora cnt o nazwie season i wykona na nich operacje z summary