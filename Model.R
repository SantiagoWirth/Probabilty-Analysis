#PUNTO A)
función <- function(){
  valor <- sample(1:2,1,replace=TRUE)
  if (valor == 1){
    sample(1:6,1,replace=TRUE)
  }  else {
    sample(1:4,1,replace=TRUE)
  }
}
#esta función simula una elección aleatoria entre los dos dados y luego su tirada.

funcion2 <- function(){
  x <- replicate(2,función())
  y = 0
  for(i in x){
    if(i == 2){
      y = 1}
    }
  return(y)
}
#Esta función primero replica dos veces el experimento "Elegir un dado aleatoriamente y tirarlo", con lo cual ya cumple el
#E.A. del enunciado. Luego, el vector "y" vale 1 si en por lo menos una de las dos tiradas sale un 2 (es decir que, en caso
#de que salga dos veces el numero 2 en las dos tiradas, solo suma 1), y 0 si no sale ningún 2. El 1 representaría entonces
#los casos favorables, y el 0 los casos no favorables. Luego, con el código inmediatamente debajo de este comentario,
#se replica mil veces el experimento explicado previamente, suma todos los casos favorables y los divide por los 
#casos totales, dando así el cálculo experimental de la probabilidad.

sum(replicate(1000,funcion2()))/1000


#PUNTO B)
funcion3 <- function(){
  valor <- sample(1:2,1,replace=TRUE)
  if (valor == 1){
    sample(1:4,1,replace=TRUE)
  }  else {
    0
  }
}
#Esta función simula primero la elección de un dado. Si elige el dado 1, se eligió
#El dado piramidal, y da valores equiprobables entre 1 y 4. Si elige el dado 2, eligió
#El dado de seis caras, y, como para nuestro experimento no sirve, lo descarta
#Asignandole el valor 0.

funcion4 <- function(){
  x <- replicate(2,funcion3())
  y = 0
  for(i in x){
    if(i == 2){
      y = 1}
  }
  return(y)
}
#Esta función replica dos veces la función anterior, es decir que simula las dos elecciones
#Y tiradas de dado. Luego, si salió un valor 2, significa que salió un 2 y además salió 
#El dado piramidal. Cuando esto ocurre, asigna el valor 1 a un vector vacío, que es luego
#El return de la función

#Probabilidad de que salga un 2 y además haya salido un dado piramidal:

w <- sum(replicate(1000,funcion4()))/1000

#Probabilidad de que salga un 2 y además haya salido un dado piramidal, dividido 
#Probabilidad de que salga un 2 (cálculo de la probabilidad pedida por el inciso):

w/(sum(replicate(1000,funcion2()))/1000)




#Aquí debajo dejamos dos opciones para graficar las convergencias de probabilidad de ambos incisos


#Inciso A
plot(funcion2(),y=1,xlim=c(0,1000),ylim=c(0.1,0.8),main="convergencia de probabilidad, inciso A",xlab="repeticiones",ylab="probabilidad")
for(i in seq(from = 1,to = 1000, by=1)){
  points(x=i,sum(replicate(i,funcion2()))/i,pch=20,col="darkred")
}

#Inciso B
plot(funcion4(),y=1,xlim=c(0,1000),ylim=c(0.3,1),main="convergencia de probabilidad, inciso B",xlab="repeticiones",ylab="probabilidad")
for(i in seq(from = 1,to = 1000, by=1)){
  points(x=i,w/(sum(replicate(i,funcion2()))/i),pch=20,col="darkslategray") 
}


