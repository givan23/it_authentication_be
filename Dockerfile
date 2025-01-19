# Usa l'immagine di base di Java
FROM openjdk:17-jdk-slim

# Imposta la variabile d'ambiente per il nome dell'applicazione
ARG JAR_FILE=target/*.jar

# Copia il file JAR nel container
COPY ${JAR_FILE} app.jar

# Espone la porta su cui Spring Boot avvierà l'applicazione
EXPOSE 8080

# Avvia l'applicazione
ENTRYPOINT ["java", "-jar", "/app.jar"]
