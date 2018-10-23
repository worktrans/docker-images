# jre-8u181 with ubuntu 18.04

FROM worktrans/ubuntu:18.04

RUN wget -q -O /tmp/jre-8u181-linux-x64.tar.gz \
--no-cookies --header "Cookie:oraclelicense=accept-securebackup-cookie;" \
http://download.oracle.com/otn-pub/java/jdk/8u181-b13/96a7b8442fe848ef90c96a2fad6ed6d1/jre-8u181-linux-x64.tar.gz \
&& tar -zxf /tmp/jre-8u181-linux-x64.tar.gz -C /tmp \
&& mv /tmp/jre1.8.0_181 /usr/local/jre && rm /tmp/jre-8u181-linux-x64.tar.gz

ENV JAVA_HOME /usr/local/jre
ENV PATH $JAVA_HOME/bin:$PATH