FROM node:10

# create app directory
WORKDIR /usr/src/app

# install app dependencies
# a wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# if prod : RUN npm ci --only=production

COPY . .
# to add code to the image

EXPOSE 8080
CMD [ "node", "server.js" ]