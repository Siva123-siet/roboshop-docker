FROM python:3.9.23-alpine3.22 AS builder
EXPOSE 8080
RUN apk add --no-cache \
    build-base \
    linux-headers \
    python3-dev \
    libffi-dev \
    openssl-dev \
    musl-dev \
    gcc \
    g++ \
    make
WORKDIR /opt/server
COPY requirements.txt .
COPY *.py .
COPY payment.ini .
RUN pip3 install -r requirements.txt
CMD ["uwsgi","--ini","payment.ini"]


# FROM python:3.9
# EXPOSE 8080
# WORKDIR /opt/server
# COPY requirements.txt .
# COPY *.py .
# COPY payment.ini .
# RUN pip3 install -r requirements.txt
# CMD ["uwsgi","--ini","payment.ini"]