FROM alpine:3.17

# Assegna la porta 3306 a MariaDB
EXPOSE 3306

# Installa MariaDB-Server e MariaDB-Client
RUN apk add mysql mysql-client

# Copia il setup file dentro la Docker image
COPY tools/setup.sh /usr/local/bin/

# Crea la cartella dove MariaDB Socket viene creata
RUN mkdir /run/mysqld

# Imposta l'entrypoint della Docker image
ENTRYPOINT ["/bin/sh", "/usr/local/bin/setup.sh"]
