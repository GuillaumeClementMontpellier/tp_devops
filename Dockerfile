FROM openjdk:11
COPY ./build/libs/tp-docker-1.0.0.jar .
ENV dbUrl 127.0.0.1:5432/tp_devops
ENV dbUsr tp_devops
ENV dbPwd tp_devops
EXPOSE 8080
CMD java -Ddatabase.url=${dbUrl} -Ddatabase.username=${dbUsr} -Ddatabase.password=${dbPwd} -jar tp-docker-1.0.0.jar
