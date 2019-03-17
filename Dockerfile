FROM ubuntu:16.04

RUN  apt-get -y update
RUN  apt-get install -y python3
RUN  apt-get -y install python3-pip
RUN  pip3 install urllib3

COPY ./public /usr/local/python/http-server/public
COPY ./httpd.conf /etc/httpd.conf


EXPOSE 80

WORKDIR '/usr/local/python/http-server/public'

CMD ["/usr/local/bin/python3", "./main.py"]

