FROM scratch

LABEL org.opencontainers.image.authors="SuLingGG"

ADD *.tar.gz /
COPY --chown=0:0 data/etc/firewall.user /etc
COPY --chown=0:0 data/etc/index.htm /etc
COPY --chown=0:0 data/etc/rc.local /etc
COPY --chown=0:0 data/etc/config/dhcp /etc/config
COPY --chown=0:0 data/etc/config/network /etc/config
COPY --chown=0:0 data/etc/opkg/distfeeds.conf /etc/opkg
COPY --chown=0:0 data/etc/uci-defaults/99-init-settings /etc/uci-defaults