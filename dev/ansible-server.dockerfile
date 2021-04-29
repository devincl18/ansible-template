FROM ubuntu:16.04

RUN apt-get update -y && apt-get install build-essential -y
RUN apt-get install inetutils-ping -y \
    && apt-get install openssh-client vim sshpass -y
RUN apt-get install software-properties-common -y \
    && apt-add-repository --yes --update ppa:ansible/ansible \
    && apt-get install ansible -y

EXPOSE 22
CMD [ "bash" ]
