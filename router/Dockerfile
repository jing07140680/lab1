From ubuntu:18.04
RUN apt-get update
RUN apt-get install -y iputils-ping
RUN apt-get install net-tools
RUN apt-get install -y quagga
RUN apt-get install -y tcpdump
RUN apt-get install -y systemd
RUN apt-get install -y wget
RUN apt-get install -y gawk
RUN apt-get install -y build-essential
RUN apt-get install -y libreadline-dev
RUN apt-get install -y texinfo
RUN apt-get install -y telnet
RUN apt-get install -y gubbins
RUN apt-get install -y vim
COPY install_quagga.sh /
COPY R1_config.sh /
COPY R2_config.sh /
COPY R3_config.sh /
COPY R4_config.sh /
COPY R4_north.sh /
COPY R4_south.sh /
COPY north.sh /
COPY south.sh /
RUN bash install_quagga.sh
