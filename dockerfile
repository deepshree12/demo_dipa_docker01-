FROM centos:7

RUN yum -y update
RUN yum install -y nginx
RUN yum clean all

EXPOSE 6379

CMD ["redis-server", "--protected-mode no"]

