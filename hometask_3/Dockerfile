FROM centos:latest

MAINTAINER <dimalenchuk@gmail.com

EXPOSE 8081

RUN sudo yum update
RUN sudo yum install httpd


ENTRYPOINT ["sudo systemctl start httpd"]
