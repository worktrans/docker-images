# tomcat 8.5.34 with jre-8
FROM worktrans/java:8-jre

LABEL Author=huchenlong<hcl0810@163.com>

ARG TOMCAT_MAJOR=8
ARG TOMCAT_VERSION=8.5.34
ARG DOWNLOAD_URL=http://mirror.bit.edu.cn/apache/tomcat/tomcat-${TOMCAT_MAJOR}/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz

RUN wget -q -O /tmp/apache-tomcat.tar.gz ${DOWNLOAD_URL} \
&& tar -zxf /tmp/apache-tomcat.tar.gz -C /tmp \
&& mv /tmp/apache-tomcat-${TOMCAT_VERSION} /usr/local/tomcat \
&& rm /tmp/apache-tomcat.tar.gz && chown -R admin:admin /usr/local/tomcat

USER admin

EXPOSE 8080

CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]