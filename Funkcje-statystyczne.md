Funkcje różne
=========================

```R
mean(wektorCzyCo) #średnia arytmetyczna

median(wektorCzyCo) #mediana

quartile(wektor) #qwartyle danego wektora
quartile(wektor,0.25) #konkretny kwartyl
IQR(wektor) #rozstęp międzykwqrtylowy

```
Dystrybucja Binominalna/dwumianowa
==========================
```R
#k - ilość sukcesów
#N - ilość prób
#p - prawdopodobieństwo

dbinom(k,N,p) #density prawd. N sukcesów
pbinom(k,N,p) #distribution prawd. -N sukcesów
```
Dystrybucja Poissona
==========================
```R
#k - ilość sukcesów
#lambda - wartość oczekiwana

dpoiss(k,lambda) #density - prawdopodobieństo N sukcesów
ppoiss(k,lambda) #distribution - prawdopodobieństo -N sukcesów
```

```R

max(wektor) #maksymalna wartość w wektorze
min(wektor)
range(wektor) # wektor zwaierający min i max
max(wektor)-min(wektor) #rozstęp wektora

var(wektor) #wariancja wektora
sd(wektor) #odchylenie standardowe

#jeszcze nie było
boxplot(w) #narysuj wykres pudełkowy
hist(w) #narysuj histogram
plot(w) #narysuj wykres

```
[źródło](http://www.r-tutor.com/elementary-statistics)
