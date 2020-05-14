FROM openjdk:14-alpine
COPY build/libs/test-gradle-bug-*-all.jar test-gradle-bug.jar
EXPOSE 8080
CMD ["java", "-Dcom.sun.management.jmxremote", "-Xmx128m", "-jar", "test-gradle-bug.jar"]