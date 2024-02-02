# NTT Challege QA Automation 
### Realizado por Alex Alvarez - Enero 2024
#### Se hace uso de la plantilla karate-template

## **Implementación**
Clonar el repositorio via Https 

Cargar el proyecto

Implementar dependencias con el comando

mvn verify

## **Descripción**
Pruebas sobre una Api de una petStore empleando Karate

## **Tecnológias**
* JDK : 17.0
* Building tool: Maven 3.9.6
* IDE: IntellIJ



## **Runner**

En la ruta src/test/java/NTTAlex/petStoreAPI/petStore.feature
Se encuentra la clase "Runner" emplear este archivo para correr los test.

## **Feature**
En la ruta src/test/java/NTTAlex/petStoreAPI/petStore.feature
El archivo petStore.feature contiene las pruebas a ejecutarse


* Crear un usuario                         método post 
* Buscar un usuario                        método get
* Actualizar nombre y correo del usuario   método put
* Buscar un usuario actualizado            método get
* Eliminar un usuario existente            método delete

en todos los casos se valida el resultado mediante la palabra reservada de cucumber "Then" y el estado esperado

## **Reportes**
Los reportes se alojan en la siguiente ruta:
target/karate-reports/karate-summary.html
Al finalizar el test en consola se despliega el enlace directo al reporte
