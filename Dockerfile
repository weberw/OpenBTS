FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y software-properties-common python-software-properties git sudo

WORKDIR /root
RUN git clone https://github.com/RangeNetworks/dev.git
WORKDIR dev
RUN ./clone.sh 
RUN ./switchto.sh master 
RUN apt-get install -y wget
RUN ./build.sh SDR1
