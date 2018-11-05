FROM alpine

# Initialize
RUN mkdir -p /data/web
WORKDIR /data/web
COPY requirements.txt /data/web/

# Setup
RUN rm /etc/nginx/sites-enabled/default
ADD nginx/ /etc/nginx/sites-enabled

# Install Server Packages
RUN apk add --update python3 python3-dev python3-pip postgresql-client postgresql-dev build-base
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

# Prepare
COPY . /data/web/
