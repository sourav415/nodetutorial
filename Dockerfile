# pull the official base image
FROM node
# set working direction
WORKDIR /my-app
# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH
# install application dependencies
COPY package.json ./
COPY package-lock.json ./
RUN npm i
EXPOSE 5000
# add app
COPY . ./
# start app
CMD ["npm", "start"]
