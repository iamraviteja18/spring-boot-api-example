FROM openjdk:11
# ARG JAR_FILE
#COPY ${JAR_FILE} app.jar
#ENTRYPOINT ["java", "-jar", "/app.jar"]
COPY --from=build /home/app/target/my-app-1.0-SNAPSHOT.jar /usr/local/lib/mymaven.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/usr/local/lib/mymaven.jar"]
