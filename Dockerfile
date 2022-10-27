FROM python:3.8.12

RUN sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list &&\
echo 'nameserver 8.8.8.8' > /etc/resolv.conf &&\
apt update &&\
apt -y install openssh-server whois dnsutils &&\
apt purge -y whois &&\
apt -y autoremove &&\
apt -y autoclean &&\
apt -y clean &&\
echo "" > /var/log/auth.log

# Create the ssh directory and authorized_keys file
COPY ./id_rsa.pub /root/.ssh/authorized_keys

# Set volumes
VOLUME /home/root/.ssh
VOLUME /etc/ssh

# Run entrypoint
CMD  service ssh start && tail -f /var/log/auth.log