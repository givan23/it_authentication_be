# it_authentication_be
back-end authentication service

### POM - Spiegazione delle dipendenze

- `spring-boot-starter-parent`: 
per gestire automaticamente le versioni delle dipendenze.

- `spring-boot-starter`:
Include le dipendenze di base necessarie per un'applicazione Spring Boot.

- `spring-boot-starter-web`:
Fornisce il supporto per creare API REST e gestire richieste HTTP.

- `spring-boot-starter-data-jpa`:
Include Hibernate e altre librerie necessarie per lavorare con JPA.

- `mysql-connector-java`:
Driver per connettersi a un database MySQL.

- `lombok`:
Riduce il codice boilerplate generando getter, setter, costruttori, e altro.

- `spring-boot-starter-test`:
Librerie utili per scrivere e eseguire test automatizzati.

- `spring-boot-maven-plugin`:
Plugin Maven per facilitare la build e l'esecuzione di applicazioni Spring Boot.

- `spring-boot-starter-validation`:
Validare gli input (es. nei DTO).

- `spring-boot-starter-security`:
Gestire l'autenticazione e l'autorizzazione.

### application.properties

### Spiegazione delle configurazioni

- **Collegamento al database Docker:**
    - `spring.datasource.url=jdbc:mysql://db:3306/it_authentication`
        - `db` è il nome del servizio Docker definito in `docker-compose.yml`.
        - Porta standard di MySQL: `3306`.
        - Nome del database: `it_authentication` (variabile `MYSQL_DATABASE` del container).
    - `spring.datasource.username=auth_user`
    - `spring.datasource.password=authpassword`
        - Valori corrispondenti alle variabili `MYSQL_USER` e `MYSQL_PASSWORD` nel servizio Docker per MySQL.

- **Driver MySQL:**
    - Specificato come `com.mysql.cj.jdbc.Driver`.

- **Configurazione JPA:**
    - `spring.jpa.hibernate.ddl-auto=update`
        - Aggiorna automaticamente lo schema in base alle entità definite nel progetto BE.
        - Modificabile a `validate` o `none` per ambienti di produzione.
    - `spring.jpa.show-sql=true`
        - Mostra le query SQL generate nel log.

- **Server del backend:**
    - Accessibile sulla porta `8080` (modificabile se necessario).

- **Logging:**
    - Livelli di log per Spring (`INFO`) e Hibernate SQL (`DEBUG`).

- **Profili attivi:**
    - Specifica il profilo attivo (`dev`) per distinguere configurazioni tra sviluppo e produzione.
