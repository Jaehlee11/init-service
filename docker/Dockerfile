FROM frolvlad/alpine-oraclejdk8:slim

EXPOSE 8080
VOLUME /var/log/moa/base

RUN mkdir -p /var/log/moa/base /opt/moa/base/lib

COPY service-0.1.0.jar /opt/moa/base/lib/service-0.1.0.jar

CMD ["java","-jar","/opt/moa/base/lib/service-0.1.0.jar"]
