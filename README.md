# UTPhone

![image alt](https://github.com/nelsonjhongp/web-utphone-app/blob/066ae6a9d8a6c6fc80ca5dbc74ac2f8343005f50/utphonebanner.png)


UTPhone es una plataforma digital diseñada para modernizar la venta de dispositivos móviles. Este proyecto combina tecnologías web esenciales con un backend robusto en Java Spring Boot y una base de datos MySQL para ofrecer una experiencia eficiente y moderna.

## Tecnologías utilizadas

- **Frontend:** HTML, CSS, JavaScript
- **Backend:** Java Spring Boot
- **Base de datos:** MySQL (XAMPP)
- **Servidor de aplicaciones:** Apache Tomcat (NetBeans)
- **Otros:** PHP para ciertas funcionalidades

## Funcionalidades principales

- Catálogo dinámico de dispositivos móviles.
- Gestión de usuarios y productos.
- Dashboard para visualizar datos relevantes.
- Integración con MySQL para almacenamiento de datos.

## Requisitos previos

Antes de comenzar, asegúrate de tener instalados los siguientes componentes:

1. **JDK** (Java Development Kit)
2. **NetBeans IDE** (o cualquier otro IDE compatible con Java Spring Boot)
3. **XAMPP** (para gestionar el servidor MySQL y Apache)

## Instrucciones de instalación

Sigue estos pasos para configurar y ejecutar el proyecto localmente:
#### 1. Clonar el repositorio
```bash
git clone https://github.com/tu_usuario/utphone.git
```
#### 2. Configurar la base de datos

Inicia XAMPP y asegúrate de que el servidor MySQL esté activo.

Importa el archivo utphone.sql a tu base de datos MySQL:

Accede a http://localhost/phpmyadmin.

Crea una base de datos llamada utphone.

Importa el archivo utphone.sql incluido en el proyecto.

#### 3. Configurar el proyecto en el IDE

Verifica que el archivo MySQLConexion.java (ubicado en el paquete util) esté configurado correctamente con los datos de tu base de datos local (usuario, contraseña y URL).

Abre el proyecto en NetBeans (o tu IDE preferido).

Activa el servidor Apache Tomcat desde NetBeans.

#### 4. Ejecutar el proyecto

Compila y ejecuta el proyecto desde tu IDE.

Accede al sitio web desde tu navegador en las siguientes direcciones:

Página principal: http://localhost:8082/pyTrabajoDesarrolloWeb

Página de inicio específica: http://localhost:8082/pyTrabajoDesarrolloWeb/index.jsp
