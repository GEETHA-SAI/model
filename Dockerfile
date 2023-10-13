FROM maven:3.9.3-eclipse-temurin-17-alpine as model
RUN java -version
WORKDIR /model
COPY . /model
RUN ls
RUN mvn clean install
WORKDIR /model/target
RUN ls -l
ENTRYPOINT java -jar model-1.0-SNAPSHOT.jar
EXPOSE 8083