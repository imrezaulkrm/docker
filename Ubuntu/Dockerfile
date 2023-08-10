FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y openssh-server && \
    mkdir /var/run/sshd

# Add a user for SSH access
RUN echo 'root:1074' | chpasswd

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]

