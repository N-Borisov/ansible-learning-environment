FROM ubuntu

RUN apt-get update && apt-get install -y openssh-server iputils-ping vim

RUN echo "root:1234" |chpasswd 

RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config && ssh-keygen -A

RUN service ssh start

CMD ["/usr/sbin/sshd","-D"]`
