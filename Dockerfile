FROM node:20-alpine

# Ferramentas necessárias
RUN apk add --no-cache git bash python3 make g++

# Diretório de trabalho dentro do container
WORKDIR /app/food

# Expor as portas que o Expo usa
EXPOSE 19000 19001 19002

# Comando padrão: inicia o Expo
CMD ["npx", "expo", "start", "--tunnel"]
