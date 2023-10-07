FROM postgres:14.9-alpine3.18

# Copia el archivo .env al contenedor
COPY .env /usr/src/app/.env

CMD 

# Variables de entorno para la base de datos
ENV POSTGRES_DB=$POSTGRES_DB
ENV POSTGRES_PASSWORD=$POSTGRES_PASSWORD

# Copia el script SQL al directorio /docker-entrypoint-initdb.d/ dentro del contenedor
COPY Script.sql /docker-entrypoint-initdb.d/

# Expone el puerto 5432 para conexiones a PostgreSQL
EXPOSE 5432
