# Usa uma imagem base do Node.js
FROM node:14

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

# Copia todos os outros arquivos do projeto para o container
COPY . .

# Expõe a porta 3000 para acesso externo
EXPOSE 3000

# Comando para rodar a aplicação
CMD [ "node", "app.js" ]
