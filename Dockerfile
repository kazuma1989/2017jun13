FROM node:8.1.0-alpine

RUN apk --no-cache add git &&\
    npm install -g yarn &&\
    yes angular | adduser angular

USER angular
WORKDIR /home/angular
RUN git clone https://github.com/kazuma1989/2017jun10.git

WORKDIR /home/angular/2017jun10
RUN yarn

EXPOSE 4200 8081

CMD ["yarn", "start"]
