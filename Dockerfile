FROM ubuntu:18.04
 
ENV DEBIAN_FRONTEND=noninteractive

WORKDIR ./home

COPY ./main.yml .
 
RUN apt-get update && \
  apt-get install -y gcc python-dev libkrb5-dev && \
  apt-get install python3-pip -y && \
  pip3 install --upgrade pip && \
  pip3 install --upgrade virtualenv && \
  pip3 install pywinrm[kerberos] && \
  apt install krb5-user -y && \ 
  pip3 install pywinrm && \
  pip3 install ansible && \
  apt install vim iputils-ping -y

COPY ./test.txt /usr/local/bin/test.txt

CMD ansible-playbook ./main.yml -vvv
