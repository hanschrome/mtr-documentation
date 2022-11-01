FROM ubuntu:20.04

RUN apt update -y && apt upgrade -y

RUN apt install curl wget sudo -y

RUN curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -

RUN apt install -y nodejs

RUN mkdir -p /var/docusaurus && cd /var/docusaurus

RUN export uid=1000 gid=1000 && \
    mkdir -p /home/developer && \
    echo "developer:x:${uid}:${gid}:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
    echo "developer:x:${uid}:" >> /etc/group && \
    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
    chmod 0440 /etc/sudoers.d/developer && \
    chown ${uid}:${gid} -R /home/developer

USER developer
ENV HOME /home/developer

WORKDIR /var/docusaurus
