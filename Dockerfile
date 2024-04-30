FROM node:18

# set working directory
WORKDIR /usr/src/app

COPY ./package.json .
COPY ./package-lock.json .

RUN npm install --silent

COPY . .

EXPOSE 3000

CMD [ "npm", "run", "start-watch" ]
