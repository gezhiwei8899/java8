FROM centos:7
#设置时区
ENV TZ Asia/Shanghai
# 添加文件
RUN cat /usr/share/zoneinfo/Asia/Shanghai > /etc/localtime \
    && mkdir -p /usr/java \
    && curl -SL "https://github.com/gezhiwei8899/java8/releases/download/jdk1.8-384/jdk-8u381-linux-x64.tar.gz" -o /tmp/jdk-8u381-linux-x64.tar.gz \
    && tar -zxvf /tmp/jdk-8u381-linux-x64.tar.gz -C /usr/java/ \
    && ln -s /usr/java/jdk1.8.0_381 /usr/java/default \
    && rm -rf /tmp/jdk-8u381-linux-x64.tar.gz
# 环境变量
ENV JAVA_HOME=/usr/java/default
ENV PATH=$PATH:$JAVA_HOME/bin
