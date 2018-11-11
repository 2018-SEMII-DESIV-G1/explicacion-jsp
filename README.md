# jsp_tomcat

## Descripción
Proyecto base para utilizar `JSP` con `TOMCAT` como app server y `HTTPD` como proxy. Toda la infraestructura esta sobre `docker` y la orquestración esta sobre `docker-compose`.

## Comandos
### Instalación
1. Instalar `docker`
2. Instalar `docker-compose`
3. Instalar `apache maven`

### Construcción de la infraestructura
1. `docker-compose build  # Desde dentro de la carpeta del proyecto`

### Compilación del proyecto
Este es un proceso que se debe repetir cada vez que se realice un cambio en el proyecto. 
1. `mvn clean package  # Desde dentro de la carpeta del proyecto`

### Ejecución
1. `docker-compose up  # Desde dentro de la carpeta del proyecto`
