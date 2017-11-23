FROM node:8.9.1

WORKDIR /usr/src/app/

RUN npm i -g elm --unsafe-perm=true --allow-root

EXPOSE 8000

CMD [ "elm-reactor","-a","0.0.0.0"]