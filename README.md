# MySQL Esports Database

Este repositorio contiene una pequeña base de datos relacional para equipos y jugadores de Esports del videojuego League of Legends. Es un proyecto de laboratorio para el manejo de MySQL y datos relacionales.

## Contenidos

- `backup.sql`: Respaldo de la base de datos MySQL.
- `README.md`: Descripción e instrucciones del proyecto.
- `LICENSE`: MIT License.

## Instrucciones para Restaurar

1. Clona este repositorio:
    ```sh
    git clone https://github.com/JuanBaquero99/MySQL-Esports.git
    cd MySQL-Esports
    ```

2. Importa el archivo `backup.sql` a tu base de datos MySQL:
    ```sh
    mysql -u [usuario] -p[contraseña] [nombre_base_datos] < backup.sql
    ```
    Reemplaza `[usuario]`, `[contraseña]`, y `[nombre_base_datos]` con los datos específicos de tu configuración.

## Licencia

Este proyecto está licenciado bajo la MIT License.
