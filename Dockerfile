FROM node:13-alpine

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=password

RUN mkdir -p /home/app

COPY . /home/node-app
# set default dir so that next commands executes in /home/app dir
WORKDIR /home/node-app

# will execute npm install in /home/app because of WORKDIR
RUN npm install

EXPOSE 3000

CMD ["node", "/home/node-app/server.js"]

