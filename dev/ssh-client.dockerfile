FROM ubuntu:16.04

RUN apt-get update -y
RUN apt-get install -y openssh-server
RUN echo 'root:123456789' | chpasswd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

EXPOSE 22
ENTRYPOINT service ssh start && bash
