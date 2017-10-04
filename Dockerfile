FROM amazonlinux:2017.09.0.20170930

RUN yum update && yum install -y less procps git curl which vi sudo ruby24 python36
RUN useradd -ms /bin/bash ec2-user

COPY cloud-init  /etc/sudoers.d

RUN mkdir /app
RUN update-alternatives --set ruby /usr/bin/ruby2.4
RUN update-alternatives --set python /usr/bin/python3.6

USER ec2-user
WORKDIR /home/ec2-user

