# My functions!

somma <- function(x,y) {
  z=x+y
  return(z)
}
somma(1,100)
somma(215,281621)

#excercise: make the function called difference

diff <- function(a,b){
  z=a-b
  return(z)
}
diff(10,5)
diff(200,8)
diff(38917201,932169)

#par(mfrow...)
mf <- function(nx=1,ny=2) {
  par(mfrow=c(nx,ny))
  }

#Struttura if/else
number <- function(x) {
  if(x>0) {
    print("Questo numero è positivo, non lo sai?")
    }
  else if(x<0) {
    print("Questo numero è negativo, studia!") 
    }
  else {
    print("Lo zero è zero.")}
  }

#Cicli for/loop : funzione di iterazione
loop <- function() {
  for (i in 1:10) {
    print(i)
  }
}

loop2 <- function() {
for (i in 1:10) {
  result <- i * 2
  print(result)
  }
}





