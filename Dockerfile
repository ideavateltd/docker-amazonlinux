FROM amazonlinux:2

# install node + build tools + python (for pip)
RUN yum upgrade -y \
 && yum install -y nodejs shadow-utils patch python36

# dumb-init
RUN curl https://bootstrap.pypa.io/get-pip.py | python
RUN pip install dumb-init