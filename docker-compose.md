# Docker compose

- The `./init` directory is mounted under `/docker-entrypoint-initdb.d` to automatically run SQL scripts when the container starts.

- The `db_data` directory stores persistent database data.

- The `phpmyadmin/phpmyadmin` service adds phpMyAdmin as a web client for MySQL. It is connected to the db (MySQL) service through the PMA_HOST environment variable.

- The `port` 8080 on your host is mapped to port 80 of the phpMyAdmin container, so you can access **phpMyAdmin** via http://localhost:8080.

- `depends_on` ensures that the db (MySQL) service starts before phpmyadmin.

- `volumes` configures the `db_data` volume, which allows you to retain MySQL persistent data even if the container is restarted or recreated.


## Container Management
To remove the container and volumes (DB data added):

```bash
docker-compose down -v
```

Start the new Docker with initial volumes:

```bash
docker-compose up -d
```

To remove the container but not the volumes:

```bash
docker-compose down
```

Start the new Docker:

```bash
docker-compose up
```

## Start the service BE + DB + PhpAdmin

- Add Dockerfile with an Java image
- Crate Jar with htis command: `mvn clean package`
- `docker-compose up -d`




