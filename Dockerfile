ARG NGINX_VERSION

FROM nginx:${NGINX_VERSION}

ARG NAME
ARG TARGETOS
ARG TARGETPLATFORM




COPY index.html /usr/share/nginx/html/index.html
RUN echo "The name is ${NAME}"
RUN sed -i "s/{NAME}/${NAME}/g" /usr/share/nginx/html/index.html
RUN sed -i "s/{NGINX_VERSION}/${NGINX_VERSION}/g" /usr/share/nginx/html/index.html
RUN sed -i "s#{TARGETPLATFORM}#$TARGETPLATFORM#g" usr/share/nginx/html/index.html
RUN sed -i "s/{TARGETOS}/$TARGETOS/g" usr/share/nginx/html/index.html

