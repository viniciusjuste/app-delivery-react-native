# Usando Node Alpine leve
FROM node:20-alpine

# Diretório de trabalho dentro do container
WORKDIR /app/food

# Instala ferramentas necessárias
RUN apk add --no-cache git bash python3 make g++

# Instala Expo CLI temporariamente
RUN npm install -g expo-cli

# Copia o projeto para dentro do container
COPY ./food /app/food

# Expor portas do Expo
EXPOSE 19000 19001 19002

# Comando para rodar o Expo
CMD ["npx", "expo", "start", "--tunnel", "--host", "0.0.0.0"]
