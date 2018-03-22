Listy
=========================
są to wektory umożliwiające przechowywanie innych obiektów

```
n = c(1,2,3)
s = C("aa","bb","cc","dd")
b = c(TRUE,FALSE)
x = list(n,s,b,3)

x[1] #zwraca kopię 1 elementu
x[[1]] # zwraca element nr 1 nie kopię
#elementy listy można nazwać

v = list(ab=c(1,2,3),bc=c("a","b"))
v$ab # zwraca element o nazwie ab
v[["ab"]] # zwraca element ab

v["ab"] # zwraca kopię elemenu ab

attach(v) # pozwala na odwołanie się do elementów v
ab # zwróci element v$ab
detach(v)


```
