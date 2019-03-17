FROM ubuntu:16.04

USER root

RUN  apt-get -y update
RUN  apt-get install -y python3
RUN  apt-get -y install python3-pip
RUN  pip3 install urllib3
RUN  mv httpd.conf /etc/httpd.conf


ADD . .

EXPOSE 80

CMD python3 public/main.py

