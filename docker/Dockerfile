FROM frolvlad/alpine-oraclejdk8:slim

EXPOSE 8080

VOLUME /mnt/efs

RUN mkdir -p /opt/moa/lib

COPY service-0.1.0.jar /opt/moa/lib/service-0.1.0.jar
COPY runService.sh /opt/moa/runService.sh
RUN chmod +x /opt/moa/runService.sh

CMD ["/opt/moa/runService.sh"]
