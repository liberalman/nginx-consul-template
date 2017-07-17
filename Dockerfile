#FROM nginx:1.7
FROM alpine:latest
MAINTAINER liberalman liberalman@github.com

# install nginx
RUN apk --update --no-cache add nginx curl bash

ENV CT_URL https://releases.hashicorp.com/consul-template/0.19.0/consul-template_0.19.0_linux_amd64.tgz
RUN curl -L $CT_URL | tar -C /usr/local/bin --strip-components 1 -zxf -

ADD nginx.service /etc/service/nginx/run
RUN chmod a+x /etc/service/nginx/run
ADD consul-template.service /etc/service/consul-template/run
RUN chmod a+x /etc/service/consul-template/run

RUN rm -v /etc/nginx/conf.d/*
COPY nginx.conf /etc/consul-templates/nginx.conf

RUN mkdir -p /run/nginx/

EXPOSE 80

#CMD ["nginx", "-g", "daemon off;"]
CMD [ "/etc/service/consul-template/run", "/etc/service/nginx/run"]

