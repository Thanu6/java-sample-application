FROM openjdk18-openshift
VOLUME /tmp
RUN mkdir logs
ARG JAR_FILE
COPY ${JAR_FILE} product-service.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/product-service.jar"]
