# BaseDeDatos_MySQL_PicanteriaMarAzul_LaHueca

Este repositorio/documentación describe la estructura y configuración de la **base de datos MySQL** utilizada para el sistema integral de gestión de menú, pedidos, pagos en línea y visualización en realidad aumentada de la Picantería Mar Azul 'La Hueca'.

## 📌 Descripción

La base de datos sirve como núcleo de almacenamiento y comunicación para los tres componentes del sistema:

- **API** (desarrollada en PHP)
- **Aplicación Web Administrativa** (desarrollada en Laravel)
- **Aplicación Móvil** (desarrollada en Flutter)

Contiene todas las tablas necesarias para administrar usuarios, roles, platillos, pedidos, pagos, estados y más.

## 🛠️ Tecnologías

- **Gestor de Base de Datos:** MySQL 5.7+ / MariaDB
- **Herramienta de gestión recomendada:** phpMyAdmin o MySQL Workbench
- **Codificación:** UTF8 / utf8mb4
- **Motor de almacenamiento:** InnoDB

## 🗂️ Tablas Principales

| Tabla             | Descripción                                      |
|------------------|--------------------------------------------------|
| `usuarios`        | Almacena los datos de los usuarios del sistema  |
| `roles`           | Define los distintos niveles de acceso          |
| `platillos`       | Contiene los datos de los productos del menú    |
| `pedidos`         | Registra los pedidos realizados                 |
| `pagos`           | Almacena los registros de pagos en línea        |
| `comentarios`     | Registra mensajes o solicitudes de soporte      |
| `categorias`      | Clasificación de los platillos (opcional)       |
| `imagenes`        | Galería de imágenes asociadas a los platillos  |

> **Nota:** Las relaciones entre tablas están construidas con claves foráneas para mantener la integridad referencial.

## 🔗 Relaciones clave

- `usuarios` ↔ `roles` (uno a muchos)
- `pedidos` ↔ `usuarios` (muchos a uno)
- `pedidos` ↔ `platillos` (muchos a muchos, si aplica)
- `pagos` ↔ `pedidos` (uno a uno o uno a muchos)
- `comentarios` ↔ `usuarios` (muchos a uno)

## 📥 Importación rápida

1. Abrir phpMyAdmin o tu cliente de base de datos.
2. Crear una base de datos vacía, por ejemplo:  
   `picanteria_mar_azul_lahueca`
3. Importar el archivo `.sql` exportado desde tu proyecto local o estructura inicial.

## 📁 Archivo SQL

El archivo SQL debe incluir:

- La creación de todas las tablas.
- Inserciones base (roles, categorías, etc.).
- Relaciones entre tablas (claves foráneas).
- Compatibilidad con Laravel (si aplica: timestamps, id autoincremental, etc.)

## 👥 Autores

- **Luis Lojano**
- **Carlos Palaquivay**

