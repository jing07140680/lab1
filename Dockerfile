From ubuntu:18.04
RUN apt-get update
RUN apt-get install -y iputils-ping
RUN apt-get install net-tools