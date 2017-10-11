FROM alpine
MAINTAINER Zhangwin <zhangwin@gmail.com>
RUN apk update && apk upgrade
RUN apk add nginx
ADD http://69.197.179.19/proser20171012.tar.gz /app/proser.tar.gz
ADD start.sh /app/start.sh
ADD nginx.conf /etc/nginx/nginx.conf
WORKDIR /app
RUN tar xzf proser.tar.gz
RUN rm -f proser.tar.gz
RUN mkdir /run/nginx
EXPOSE 80
CMD ["sh","/app/start.sh"]
