FROM ubuntu:18.10

WORKDIR /tmp

COPY . .

RUN  apt-get -y update
RUN  apt-get install -y python3
RUN  apt-get -y install python3-pip
RUN  pip3 install urllib3

RUN mv ./httpd.conf /etc/httpd.conf

WORKDIR /tmp/public

CMD python3 main.py
EXPOSE 80