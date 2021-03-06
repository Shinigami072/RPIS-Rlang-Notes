y <- function(x,a=1,b=0) {
  result <- a*x +b
  return(result)
}
y

z <- function(x,a=1,b=2,c=1){
  wynik <- a*x^2 +b*x +c
  return(wynik)
}
z

comp_length <- function(x1,x2){
  #obliczam dł wektorów
  l1 <- length(x1)
  l2 <- length(x2)
  #sprawdzenie czy wek są tej samej dł
  if (l1==l2){
    print("wektory tej samej dl")
    #zwraca wartoœæ TRUE
    return(TRUE)
  } else {
    print("wektory różnej dł")
    return(FALSE)
  }
  
}

expected <- function(x,p){
  suma = 0
  for (i in x){
    wynik <- i*p[i]
    suma <- suma+wynik
  }
  return(suma)
}
expected1 <- function(x,p){
  
  suma <- sum(p*x)
  
  return(suma)
}


variance <- function(x,p){
  suma=0
  for (i in x){
    wynik <- ((i-expected1(x,p))^2)*p[i]
    suma <- suma+wynik
  }
  return(suma)
}

isprob <- function(wek,pr){
  l1 <- length(wek)
  l2 <- length(pr)
  spr <- sum(pr)
  if ((l1==l2)&&(spr==1)&&(length(pr[pr<0]==0))
){
    return(TRUE)
  }else{
    return(FALSE)
  }
}


stand <- function(x){
	z = ((x-mean(x))/sd(x)
	return(z)
}

calc_interval_pp <- function(mi,sigma,a,b){
  koniec <- pnorm(b,mi,sigma)
  poczatek <- pnorm(a,mi,sigma)
  wynik <- koniec - poczatek
  return(wynik)
}
  
pitagoras <- function(a,b){
  c = sqrt(a^2+b^2)
  return (c)
}

circle <- function(r){
  ob = pi*r^2
  return(ob)
}
