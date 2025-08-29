FROM node:20-alpine

# Instala git e bash (muitas libs do expo usam git)
RUN apk add --no-cache git bash

# Instala Expo CLI global
RUN npm install -g expo-cli

WORKDIR /app

EXPOSE 19000 19001 19002
