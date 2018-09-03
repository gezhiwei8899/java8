FROM centos:7
#设置时区
ENV TZ Asia/Shanghai
RUN cat /usr/share/zoneinfo/Asia/Shanghai > /etc/localtime
# 添加文件
ADD jdk-8u181-linux-x64.tar.gz /usr/java/
# 建立软链
RUN ln -s /usr/java/jdk1.8.0_181 /usr/java/default
# 环境变量
ENV JAVA_HOME=/usr/java/default
ENV PATH=$PATH:$JAVA_HOME/bin
