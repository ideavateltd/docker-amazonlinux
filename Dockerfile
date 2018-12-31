FROM amazonlinux:2

# install basic tools
RUN yum upgrade -y \
 && yum install -y shadow-utils patch python3-pip

# dumb-init
RUN pip3 install dumb-init
RUN ln -s /usr/local/bin/dumb-init /usr/bin/dumb-init