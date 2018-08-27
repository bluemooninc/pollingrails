FROM centos:7
MAINTAINER "yoshi sakai"

RUN yum -y update

# install apache2.4
RUN yum -y install httpd

# enable service.
RUN systemctl enable httpd

# exec.
CMD ["/sbin/init"]
