FROM python:3.7.2-alpine3.9

WORKDIR /tmp

COPY . .

RUN  pip3 install urllib3

RUN mv ./httpd.conf /etc/httpd.conf

WORKDIR /tmp/public

CMD python3 main.py
EXPOSE 80