# Introducción a la Programación con R
# Autor: Esteban López Ochoa
# Institución: Universidad Adolfo Ibáñez

#------ Parte 1: Explorando R ------

print('Hola mundo!, Mamá mírame!, estoy programando en R,...') # Esta es una función que imprime lo que está entre el paréntesis en la consola.

1+1 #Esto es un comando que corre la suma de (1+1) y lo muestra el resultado en la consola


pi # pi es un objeto que guarda información. Especificamente de el número pi matemático. Cuando se corre muestra el número pi.

demo('graphics')  #Es una funcion que corre alguna interface y genera demostraciones en R, en este caso 'graphics' es un paquete de gráficos que va corriendo a medida que uno apreta enter.

install.packages("leaflet") #Esta es una funcion en donde descarga e instala paquetes desde. En este caso descarga streetmaps y al correrlo despliega el mapa en R. Esto es con leaflet que es una biblioteca que tiene diferentes mapas interactivos.
library(leaflet)
leaflet::leaflet() %>%
  addTiles() %>%  # Add default OpenStreetMap map tiles
  addMarkers(lng=-71.530294, lat=-33.019305,  popup="Aquí Estamos!")

#------ Parte 2: Creando un objeto ------

dosmasdos <- 2 + 2 #Se creó un objeto. En este caso contiene una suma y al correrlo solo se guarda en la consola.
dos_mas_dos <- 2 + 2 #Se creó un objeto. En este caso contiene la misma suma y al correrlo solo se guarda en la consola. 
dos.mas.dos <- 2 + 2 #Secreó un objeto. En este caso contiene la misma suma y al correrlo solo se guarda en la consola.
sumita <- 3+4 #Se hizo un comando que creó un objeto. En este caso contiene una suma y al correrlo solo se guarda en la consola.

#------ Parte 2: Funciones, manipulando un objeto ------

dosmasuno #Es un objeto ya creado que contiene comandos(2+2) y al correrlo ejecuta y muestra en la pantalla el resultado 4.

dosmasdos*dosmasdos #Es un comando que multiplica dos objetos ya creados y en la cosola muestra el resultado de la multiplicación.


#¿Qué clase de objeto es 'dosmasdos'? 

class(dosmasdos)#class es una función que permite saber que clase es el objeto dependiendo de los atributos que tenga. En este caso es numerico e imprime en la consola 'numeric' 

#¿Qué puedo hacer con el objeto 'dosmasdos'?
sum(dos_mas_dos,dosmasdos,3)

sum(c(dos_mas_dos,dosmasdos,3))

#------ Parte 4: Tipos de Objetos ------

a<-1

b<-"Muchachita muchachita la peineta..."

l1<-list(a,b)

m1<-matrix(0,2,2)

sq1<-seq(1,10,1)

sq2<-LETTERS[sq1]

df1<- data.frame(sq1,sq1)

caja<-array(data = 0,dim = c(2,2,3))

#------ Parte 5: Indexación de Objetos ------

A<-c(1836457,2)

A
A[1]
A[2]
A[-1]
A[1:2]

notas<-rnorm(100,5,1.8)

notas[1:5]
notas>4

notas[notas>4]

#------ Parte 5: Manipulación de Objetos ------

class(notas)
class(m1)

length(notas)
length(m1)

dim(m1)
dim(df1)
dim(caja)

names(df1)

rm(m1)

ls()



#------ Parte 6: Paquetes ------
#https://www.youtube.com/watch?v=6AOpomu9V6Q

install.packages("leaflet") # instalar 

library(leaflet) # cargar

#usar
leaflet::leaflet() %>%
  addTiles() %>%  # Add default OpenStreetMap map tiles
  addMarkers(lng=-71.530294, lat=-33.019305,  popup="Aquí Estamos!")


library(foreign)


#------ Parte 6: Ayuda ------

?sum
help('sum')

help(package='foreign')

??regression

#------ Parte 7: Practica ------

install.packages("swirl") # instalar 

library(swirl) # cargar

