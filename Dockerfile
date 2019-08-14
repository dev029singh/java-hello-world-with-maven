FROM centos
MAINTAINER dev029singh@gmail.com

#RUN apt-get -y update && apt-get -y upgrade
RUN yum -y install openjdk-8-jdk wget
RUN mkdir /usr/local/tomcat
RUN wget http://www-eu.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz -O /tmp/tomcat.tar.gz
RUN cd /tmp && tar xvfz tomcat.tar.gz
RUN cp -Rv /tmp/apache-tomcat-8.5.16/* /usr/local/tomcat/
EXPOSE 8080
CMD /usr/local/tomcat/bin/catalina.sh run
