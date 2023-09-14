#Install Node Js
FROM node:alpine as node

#Defining Work Directory
WORKDIR /react-app

#Copy Package.json in Directory
COPY ./package.json /react-app

#Running npm Install
RUN npm install

#Copy Rest Application
COPY . .

#Starting The Application 
CMD npm start