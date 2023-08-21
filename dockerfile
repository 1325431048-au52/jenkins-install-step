FROM ubuntu:latest
RUn apt-get update && apt-get install -y systemd

RUN systemctl mask systemd-logind.service systemd-udevd.service &&  systemctl mask getty.target systemd-getty-generator

RUN apt-get clean &&  rm -rf /var/lib/apt/lists/*  /temp/*  /var/temp/*

CMD [ "/lib/systemd/systemd" ]