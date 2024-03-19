FROM node:20
WORKDIR /app
COPY ./package.json .
RUN npm install
RUN npm i esbuild
COPY . .
EXPOSE 80
CMD ["npm", "run", "dev"]
