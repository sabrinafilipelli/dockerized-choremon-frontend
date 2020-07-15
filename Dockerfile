FROM node:12
  
EXPOSE 3000

COPY ./ /home/node/app

WORKDIR /home/node/app/client

RUN ["/usr/local/bin/yarn", "install"]

RUN ["/usr/local/bin/yarn", "build"]

CMD ["/usr/local/bin/yarn", "start"]
