# Etapa de compilación
FROM maven:3.8.4-openjdk-11 AS builder

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /crudspringboot

# Copia los archivos del repositorio al directorio de trabajo en el contenedor
COPY . .

# Compila la aplicación utilizando Maven
RUN mvn clean package

# Etapa de ejecución
FROM openjdk:11-jdk

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /crudspringboot

# Copia el archivo JAR generado por la compilación al directorio de trabajo en el contenedor
COPY --from=builder /crudspringboot/target/*.jar app.jar

# Expone el puerto 3000 del contenedor
EXPOSE 3000

# Comando de entrada para ejecutar la aplicación
CMD ["java", "-jar", "app.jar"]
