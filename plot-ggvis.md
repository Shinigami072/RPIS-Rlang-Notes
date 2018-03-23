ggvis
=========================
https://ggvis.rstudio.com/ggvis-basics.html
instalacja:
`install.packages("ggvis",dependencies =TRUE)`
załadoawnie:
`library(ggvis)`

podstawy pracy:
 dane do wyświetlenia należy przygotować za pomocą funkcji ggvis
 `p = ggvis(argumenty)`
 a następnie przekazać do odpowiedniej funkcji layer `layer_points(p)`
 można wykożystać operator pipe to tego `mtcars %>% ggvis(x=~X,y=~Y,...)%>%layer_points()`
 `~` są używane by pokazać że chcemy wykorzystać dane z `mtcars` ane dosłownie(np inna zmienną),
 jeżeli chcemy ustawić jakąś zmienną na 'sztywno'- nie skalować jej razem z innymi wartościami musimy użyć operatora `:=` zamiast `=`

 przy wyświtlaniu są następujące argumenty opcjonalne:
 - `fill` - kolor wypełnienia
 - `stoke` - kolor obramóki
 - `size` - wielkość
 - `shape` -kształt

przykład
 ```
mtcars %>% ggvis(~mpg,~disp , stroke=~vs) %>% layer_points()
#wyświetli plot zmiennej mpg od disp, z obramówką pokolorowaną w zalećniści od vs (continuum)
mtcars %>% ggvis(~mpg,~disp , stroke=~factor(vs)) %>% layer_points()
#wyświetli plot zmiennej mpg od disp, z obramówką pokolorowaną w z podziałemna różne wartości vs
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
  - layer_histograms() - histogram `width = NULL` szerokość, `center = NULL` centrum bloku, `boundary = NULL,` krawędź?
  - layer_boxplots() - wykres pudełkowy

opisy osi:
 - add_axis(vis, "x", title = "My x variable"), dodanie opisu do osi x ]
 -  add_axis("x", subdivide = 9, values = 1:6, tick_size_major = 10,
    tick_size_minor = 5, tick_size_end = 15, tick_padding = 20) ustawienia skali
 - add_legend(vis, "fill", title = "Some interesting colours") - opis zmiennej

input types:
 - input_slider(min, max, step = 0.10, label = "width")
 - input_checkbox()
 - input_numeric()
 - input_text()
