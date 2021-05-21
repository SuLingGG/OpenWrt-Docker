FROM scratch

LABEL org.opencontainers.image.authors="SuLingGG"

ADD *.tar.gz /
COPY --chown=0:0 data/etc /etc

RUN ls /etc && \
    ls -al /etc/config
