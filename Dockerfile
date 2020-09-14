FROM openjdk:8-jdk-alpine

MAINTAINER visionken <visionken2017@qq.com>

# 基于alpine的镜像时区修改为中国
RUN apk --no-cache add tzdata && \
    ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone

ENV JAVA_OPTS=""
VOLUME /tmp

# Install curl and bash for the entry script
RUN apk --update add curl bash tini ttf-dejavu && \
	rm -rf /var/cache/apk/*

RUN curl -sfSL http://27.154.58.94:6084/tu/jdk/8/local_policy.jar -o /usr/lib/jvm/java-1.8-openjdk/jre/lib/security/policy/unlimited/local_policy.jar \
	&& curl -sfSL http://27.154.58.94:6084/tu/jdk/8/US_export_policy.jar -o /usr/lib/jvm/java-1.8-openjdk/jre/lib/security/policy/unlimited/US_export_policy.jar
