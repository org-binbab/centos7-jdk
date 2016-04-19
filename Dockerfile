FROM centos:7
MAINTAINER BinaryBabel OSS <code-czar@binbab.org>

RUN pushd /tmp \
    && curl -L -o jdk.rpm -H "Cookie: oraclelicense=accept-securebackup-cookie" -k \
      'http://download.oracle.com/otn-pub/java/jdk/8u92-b14/jdk-8u92-linux-x64.rpm' \
    && rpm -Uvh jdk.rpm \
    && rm jdk.rpm && popd \
    && echo "export JAVA_HOME=/usr/java/default/" > /etc/profile.d/java_home.sh
