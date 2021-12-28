FROM node:lts-alpine

WORKDIR /myapp
COPY ["package.json", "package-lock.json*", "./"]
RUN npm install  && mv node_modules ../
COPY . .
EXPOSE 3000
USER node
CMD ["npm", "start"]
