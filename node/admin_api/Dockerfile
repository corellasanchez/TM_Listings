# Use Node v8 as the base image.
FROM node:8

ENV NODE_ENV=docker

# create and set app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./


# Bundle app source
COPY . .

# Install dependencies 
RUN cd /usr/src/app && CI=true npm install

# Run app
CMD ["npm", "run", "dev"]