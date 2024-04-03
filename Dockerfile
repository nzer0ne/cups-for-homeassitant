#FROM shinsenter/alpine-s6:latest
FROM alpine

RUN apk update --no-cache &&  apk add --no-cache \
    --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing \
    cups \
    cups-filters \
    cups-pdf \
    avahi \
    inotify-tools \
    dbus \
    nginx \
    colord \
    gutenprint-cups \
    gutenprint \
    brlaser \
    hplip \
    ghostscript \
    gnupg


COPY rootfs /
RUN ["chmod", "+x", "/run.sh", "/etc/cont-init.d/dbus-setup", "/etc/services.d/avahi/run", "/etc/services.d/dbus/run", "/etc/services.d/nginx/run"]
EXPOSE 631

CMD ["/run.sh"]
