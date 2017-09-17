FROM debian:latest
MAINTAINER Max Kaplan <kaplanmaxe3@gmail.com>

RUN apt-get update
RUN apt-get install -y build-essential automake autoconf libtool libgmp3-dev git
RUN git clone https://github.com/kaplanmaxe/supervanitygen
RUN cd supervanitygen && make
RUN ln -s /supervanitygen/vanitygen /usr/local/bin/vanitygen
