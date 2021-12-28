FROM node:lts-alpine

ENV NODE_ENV=production
WORKDIR /myapp
COPY ["package.json", "package-lock.json*", "./"]
RUN npm install --production --silent && mv node_modules ../
COPY . .
EXPOSE 3000
RUN chown -R node /myapp
USER node
CMD ["npm", "start"]
