FROM node:20
WORKDIR /app
COPY ./actions/package.json .
RUN npm install
RUN npm i esbuild
COPY ./actions .
EXPOSE 80
CMD ["npm", "run", "dev"]
