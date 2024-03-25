ARG BUILD_FROM
FROM $BUILD_FROM

#LABEL io.hass.version="1" io.hass.type="addon" io.hass.arch="armhf|aarch64|i386|amd64"

RUN apk update --no-cache &&  apk add --no-cache \
    cups \
    cups-filters \
    avahi inotify-tools


#COPY rootfs /
#RUN ["chmod", "+x", "/run.sh"]
#EXPOSE 631

#CMD ["/run.sh"]
