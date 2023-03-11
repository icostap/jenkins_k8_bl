FROM node:latest
WORKDIR /app
RUN npm install express
COPY ./example-app/app.js .
CMD ["node", "app.js"]