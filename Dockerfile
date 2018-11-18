FROM ubuntu:12.04
RUN apt-get update && \
      apt-get -y install sudo
USER root
COPY Dynatrace-ActiveGate-Linux-x86-1.159.0.sh /opt/dynatrace/
EXPOSE 9999 8443
RUN ["chmod", "+x", "/opt/dynatrace/Dynatrace-ActiveGate-Linux-x86-1.159.0.sh"]
CMD ./opt/dynatrace/Dynatrace-ActiveGate-Linux-x86-1.159.0.sh --enable-synthetic && tail -f /var/log/dynatrace/gateway/dynatracegateway.0.0.log
