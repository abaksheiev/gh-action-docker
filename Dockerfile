FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME sample_mflix
ENV MONGODB_CLUSTER_ADDRESS cluster0.bojwj8j.mongodb.net
ENV MONGODB_USERNAME abaksheiev
ENV MONGODB_PASSWORD Qa&1CXyrn0VRVanJ

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]