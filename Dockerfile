FROM ideavate/amazonlinux:2

RUN yum update -y

# Install docker
RUN amazon-linux-extras install -y docker

# Install git
RUN yum install -y git

# Install sudo
RUN yum install -y sudo

# Setup non-root user for build, but allow sudo and docker
RUN useradd -m -g docker builder && echo "builder ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/builder
RUN chmod a=rwx -R /home/builder
WORKDIR /home/builder
USER builder
