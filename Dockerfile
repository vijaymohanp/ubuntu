###################################################################
# Ubuntu Dockerfile
#
# https://github.com/vijaymohanp/ubuntu/blob/master/Dockerfile
#
###################################################################

# Pull base image.
FROM ubuntu:18.04

MAINTAINER Vijay Mohan <vijay@ranker.com>

# Install.
RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y build-essential && \
  apt-get install -y software-properties-common && \
  apt-get install -y byobu curl git htop man unzip vim wget && \
  apt-get install -y install iputils-ping \
  apt-get install -y build-essential \
  apt-get install -y supervisor \
  apt-get install -y unzip \
  apt-get install -y rsync \
  apt-get install -y curl \
  apt-get install -y wget \
  apt-get install -y vim \
  apt-get install -y mysql-client \
  apt-get install -y run-one \
  apt-get install -y mailutils \
  apt-get install -y postfix \
  apt-get install -y libdbi-perl \
  apt-get install -y python-mysqldb \
  apt-get install -y libmail-sendmail-perl \
  apt-get install -y libmime-lite-perl \
  apt-get install -y python-software-properties \
  apt-get install -y python-redis \
  apt-get install -y software-properties-common \
  apt-get install -y libpcre3-dev \
  apt-get install -y gcc  \
  apt-get install -y openssl \
  apt-get install -y libcurl4-openssl-dev \
  apt-get install -y pkg-config \
  apt-get install -y ifupdown-extra \
  rm -rf /var/lib/apt/lists/*

# Add files.


# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

# Define default command.
CMD ["bash"]
