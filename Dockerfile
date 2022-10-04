FROM centos:centos7

RUN yum update -y

# Updating the YUM package repository
RUN yum makecache

# Install build tools
RUN yum install -y gcc-c++ make

# Get NodeJS install script and pass it to execute
RUN curl -sL https://rpm.nodesource.com/setup_14.x | bash

# Install NodeJS
RUN yum install -y nodejs

CMD ["/bin/bash"]
