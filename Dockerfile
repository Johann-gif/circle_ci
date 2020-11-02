FROM node:12.18.4
WORKDIR /usr/src/app
COPY package.json yarn.lock ./
RUN yarn global add node-gyp && yarn install
COPY . .
EXPOSE 3000
CMD ["yarn", "start"]