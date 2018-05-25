Kiedy używamy jakiego rozkładu:
==================================

# t-Studenta:
> TYLKO gdy odchylenie standardowe populacji generalnej jest nieznane
> nieliczna próba (tzn, mniejsza niż 30)

# rozkład normalny
>  odchylenie standardowe populacji generalnej jest znane
> liczna próba


```UWAGA```
W przypadku gdy rozmiar próby jest większy lub równy 30 wtedy zamiast brać rozkład t bierzemy rozkład normalny. 
Wynika to z faktu, że rozkład t studenta dla n>=30 jest bardzo podobny do rozkładu normalnego. 
Dla n < 30 rozkład studenta jest „szerszy”, tzn. bardziej prawdopodobne są wartości mocno odbiegające od średniej niż w przypadku rozkładu normalnego.

```CHARAKTERYSTKA T-STUDENTA```
> Dla n obserwacji rozkład studenta ma n-1 stopni swobody (ozn. df)
> Dla n>= 30 rozkład t studenta przybliżamy rozkładem normalnym N(0,1)
> Rozkład t- studenta jest rozkładem symetrycznym
> Rozkład studenta jest rozkładem jednomodalnym (ma jedną „górkę”)
> poziom istotności (poziom prawdopodobieństwa), dla którego dany wynik będzie wskazywał na istotną zależność (ozn. p lub 1-alfa)

#Funkcje w R dla T-studenta
> dt(x, df, ncp, log = FALSE)  -  gęstość prawdopodobieństwa w punktach określonych przez x
> pt(q, df, ncp, lower.tail = TRUE, log.p = FALSE) -  dystrybuantę w punktach określonych przez q
> qt(p, df, ncp, lower.tail = TRUE, log.p = FALSE) -  kwantyle w punktach
określonych przez p
> rt(n, df, ncp) -  n losowych wartości

p - prawdopodobieństwo
x,q - kwantyle
n - liczność próby
ncp - można pomijać

#ESTYMATOR
parametr obliczony dla próby badawczej, na podstawie którego szacujemy prawdziwą wartość parametru w populacji

```Cechy```:

 >Efektywność estymatora 
to innymi słowy wielkość wariancji estymatora. Im efektywniejszy jest estymator tym ma mniejszą wariancję w kolejnych pomiarach. Innymi słowy, "narzędzie" (estymator) do estymacji parametru tym jest lepsze im dostarcza mniej zmiennych wyników

> Zgodność estymatora
 oznacza, że wraz ze wzrostem liczby prób coraz bardziej zbliżamy się do prawdziwej szacowanej wartości. Jeżeli nasz estymator jest zbieżny to oznacza, że im więcej prób pomiaru danej wartości przeprowadzimy to estymator będzie zbliżał się do rzeczywistej wartości a tym samym będzie malał błąd oceny parametru przez estymator. 

> Estymator nieobciążony
 to taki, że wartość oczekiwana rozkładu estymatora jest równa wartości szacowanego parametru. Nie ma znaczenia, ile elementów jest w próbie, z której korzystamy.


