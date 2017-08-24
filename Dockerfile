FROM ubuntu:latest
RUN apt-get update && apt-get install -y supervisor
COPY supervisord.conf /etc/supervisor/supervisord.conf
CMD ["/usr/bin/supervisord"]
