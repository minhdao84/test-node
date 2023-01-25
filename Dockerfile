FROM node

RUN mkdir /usr/srv/app

WORKDIR /usr/srv/app

ENV PATH /usr/srv/app/node_modules/.bin:$PATH

COPY package*.json /usr/srv/app

RUN npm install

COPY . /usr/srv/app

EXPOSE 4000

CMD ["npm", "start"]