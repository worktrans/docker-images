# jre-8u191 with ubuntu 18.04

FROM worktrans/ubuntu:18.04

ARG VERSION=191
ARG VERSION_HASH=2787e4a523244c269598db4e85c51e0c

RUN wget -q -O /tmp/jre-8u${VERSION}-linux-x64.tar.gz \
--no-cookies --header "Cookie:oraclelicense=accept-securebackup-cookie;" \
http://download.oracle.com/otn-pub/java/jdk/8u${VERSION}-b12/${VERSION_HASH}/jre-8u${VERSION}-linux-x64.tar.gz \
&& tar -zxf /tmp/jre-8u${VERSION}-linux-x64.tar.gz -C /tmp \
&& mv /tmp/jre1.8.0_${VERSION} /usr/local/jre && rm /tmp/jre-8u${VERSION}-linux-x64.tar.gz

ENV JAVA_HOME /usr/local/jre
ENV PATH $JAVA_HOME/bin:$PATH