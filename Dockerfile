FROM centos:7
#设置时区
ENV TZ Asia/Shanghai
cat /usr/share/zoneinfo/Asia/Shanghai > /etc/localtime
# 添加文件
RUN curl -SL "https://github.com/gezhiwei8899/java8/releases/download/jdk-181-tar.gz/jdk-8u181-linux-x64.tar.gz" -o /tmp/jdk-8u181-linux-x64.tar.gz \
    && tar -zxvf /tmp/jdk-8u181-linux-x64.tar.gz -C /usr/java/ \
    && ln -s /usr/java/jdk1.8.0_181 /usr/java/default \
    && rm -rf /tmp/jdk-8u181-linux-x64.tar.gz
# 环境变量
ENV JAVA_HOME=/usr/java/default
ENV PATH=$PATH:$JAVA_HOME/bin
