FROM amazonlinux:2

# install basic tools
RUN yum upgrade -y && \
    yum install -y shadow-utils patch make gcc gcc-c++ git