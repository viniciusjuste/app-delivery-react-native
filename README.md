Food App - Expo + Docker

Este projeto é um app React Native usando Expo, rodando 100% em Docker.
Dessa forma, você não precisa instalar expo-cli ou qualquer pacote global no seu computador.

---

Pré-requisitos:
- Docker instalado no computador
- Node.js (opcional, apenas se quiser criar projetos via npx)

---

Estrutura:
- food/        -> pasta do projeto Expo
- Dockerfile   -> define a imagem do container
- docker-compose.yml -> configura o container do Expo

---

Comandos principais:

1. Criar o projeto (opcional)
   Se ainda não tiver criado, rode na sua máquina:
   npx create-expo-app food
   Isso cria a pasta food/ com o projeto inicial.

2. Subir o container e rodar o app
   docker compose up
   - Isso inicia o container e o Metro Bundler.
   - O QR Code aparece no terminal.
   - Para abrir no navegador (interface web do Expo): http://localhost:19002

3. Rodar o app dentro do container (recomendado para usar Expo Go)
   - Entre no shell do container:
     docker compose exec expo sh
   - Navegue até a pasta do projeto:
     cd /app/food
   - Inicie o Expo usando tunnel (gera QR Code acessível externamente):
     npx expo start --tunnel
   - Você verá o QR Code no terminal para abrir no Expo Go.

4. Rodar em segundo plano (detach)
   docker compose up -d
   - Para ver logs e QR Code:
     docker compose logs -f

5. Parar o container
   docker compose down

---

Observações:
- Todo o ambiente do Expo está isolado no Docker.
- Nenhum pacote global foi instalado na sua máquina.
- Para adicionar dependências ao projeto dentro do container:
   docker compose exec expo sh
   cd /app/food
   npm install <pacote>

Agora você tem um ambiente limpo e portátil, pronto para rodar o app em qualquer máquina com Docker.
