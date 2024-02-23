ADD VERSION .
FROM opensuse/leap:latest
RUN zypper in -y dnsmasq
COPY dnsmasq.conf /etc/dnsmasq.conf
CMD dnsmasq --log-async --enable-dbus --keep-in-foreground
