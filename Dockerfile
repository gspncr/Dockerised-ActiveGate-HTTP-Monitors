# YOUR_SH_DOWNLOADER_URL must be set, this is the full installer URL including token (don't publish yours)
 #  e.g. https://REDACTED.live.dynatrace.com/api/v1/deployment/installer/gateway/unix/latest?Api-Token=REDACTED&arch=x86&flavor=default
# YOUR_RELEASE_SH_FILE must be set, this is the format of "Dynatrace-ActiveGate-Linux-x86-1.159.0.sh" for instance
FROM ubuntu:12.04
RUN apt-get update && \
      apt-get -y install sudo
USER root
ADD YOUR_SH_DOWNLOADER_URL /opt/dynatrace/
EXPOSE 9999 8443
RUN ["chmod", "+x", "/opt/dynatrace/YOUR_RELEASE_SH_FILE"]
CMD ./opt/dynatrace/YOUR_RELEASE_SH_FILE --enable-synthetic && tail -f /dev/null
