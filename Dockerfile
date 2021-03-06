FROM centos:centos6.6
MAINTAINER Liam Galvin

WORKDIR /srv

RUN rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm
RUN rpm -Uvh https://mirror.webtatic.com/yum/el6/latest.rpm

RUN yum install -y -q epel-release; yum clean all
RUN yum install -y -q ant; yum clean all
RUN yum install -y -q php56w php56w-xml php56w-pdo php56w-pecl-apcu; yum clean all

RUN sed -i 's/short_open_tag = Off/short_open_tag = On/' /etc/php.ini
