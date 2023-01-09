FROM debian:bullseye

RUN apt-get update && \
    apt-get install -y wget sudo gnupg
RUN echo "deb http://archive.raspberrypi.org/debian/ bullseye main" > /etc/apt/sources.list.d/raspi.list && \
    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 82B129927FA3303E && \
    sudo apt update && \
    sudo apt install -y python3-picamera2 && \
    sudo apt-get clean && \
    rm -rf /var/lib/apt/lists/*
