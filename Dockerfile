FROM scratch

LABEL org.opencontainers.image.authors="SuLingGG"

ADD *.tar.gz /
COPY --chown=0:0 files/etc /etc
COPY --chown=0:0 files/root /root
