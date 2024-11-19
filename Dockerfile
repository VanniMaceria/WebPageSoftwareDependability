FROM openjdk:17
ADD target/WebPageSwDependability-1.0-SNAPSHOT-jar-with-dependencies.jar web_page_sw_dependability.jar
ENTRYPOINT ["java", "-jar", "web_page_sw_dependability.jar"]
EXPOSE 8080
