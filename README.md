# explicacion-jsp

## Descripción
Proyecto base para utilizar `JSP` con `TOMCAT` como app server y `HTTPD` como proxy. Toda la infraestructura esta sobre `docker` y la orquestración esta sobre `docker-compose`.

## Comandos
### Instalación
1. Instalar `docker`
2. Instalar `docker-compose`
3. Instalar `apache maven`

### Instalación (Vagrant)
1. Instalar `vagrant`.
2. `vagrant up --provision  # Solo la primera vez`
3. `cd /vagrant  # Es la carpeta definida como "shared" en el vagrantfile.`
4. Construir la infraestructura.
5. Compilar y ejecutar el proyecto. Repetir cada vez que se haga un cambio en un archivo JSP, HTML, CSS o JS.
6. Digirse al navegador a la ruta: `http://localhost:8000/buscaminas/`. El puerto `8000` del host es redireccionado al puerto `80` del httpd que se encuentra dentro de la máquina virtual y ese a su vez, redirecciona ese puerto al `8009` de tomcat (Revisar `vagrantfile`, `Dockerfile`,  `docker-compose.yml`).
 
### Construcción de la infraestructura
1. `docker-compose build  # Desde dentro de la carpeta del proyecto`

### Compilación y ejecución del proyecto
Este es un proceso que se debe repetir cada vez que se realice un cambio en el proyecto. 
1. `mvn clean package  # Desde dentro de la carpeta del proyecto`
2. `docker-compose up  # Desde dentro de la carpeta del proyecto`
