
Standaryzacja danych do rozkładu normalnego -standardowego:
```R
scale(x) -ustandarysowane zmienne x
x- rozkład standardowy
```

```R
dnorm(x,mean=0,sd=1) - gęstość -prawdopodobieństwo danej wartości
pnorm(x,mean=0,sd=1,side=TRUE) - dystrybuanta - prawdopodobieństwo z<=x[parz side]
qnorm(q,mean=0,sd=1,side=TRUE) - kwantyl q - np 0.5 - mediana, 0.25 Q1 0.75 Q3

rnorm(n,mean=0,sd=1) - losowanie n zmiennych z podanej dystrybucji

mean - wartość oczekiwana
sd - odchylenie standardowe
x - wartość
q - wortośc kwanryla
n - ilość zmiennych
side - jeżeli TRUE -rozpartywane dla z<=x, inaczej z>x
```
