Factor
=========================
factor umożliwia przechowywanie zmiennych o kilku określonych wartościach

```
c = factor(wektor_wartości_zmiennych) #tworzy factor o podanych zmiennych
c = factor(wektor_wartości_zmiennych, level=wektor_kolejności_typów) #tworzy factor o podanych zmiennych w podanej w level-u kolejności (różnicę widać po wyświetleniu table która uwzględnia level)

table(c) #wyświetla tablicę zrobioną z c
summary(c) #podsumowywuje c (w kolejności zadanej przez level)
```
