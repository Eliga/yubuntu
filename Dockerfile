FROM ubuntu:16.04

RUN apt-get update && apt-get install -y openssh-server supervisor

RUN mkdir -p /var/run/sshd
RUN mkdir -p /root/.ssh

COPY keys.pub /root/.ssh/authorized_keys
COPY sshd.conf /etc/supervisor/conf.d/sshd.conf

EXPOSE 22
CMD ["/usr/bin/supervisord", "-n"]
