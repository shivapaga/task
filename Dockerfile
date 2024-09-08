FROM node:14
WORKDIR /app
COPY package.json /app
RUN npm install
COPY . /app
RUN npm run build
CMD ["npm", "start"]
EXPOSE 3000
