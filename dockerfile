# Usa uma imagem base do Node.js
FROM node:14

# Define o diretório de trabalho no container
WORKDIR /usr/src/app

# Copia os arquivos package.json e package-lock.json para instalar as dependências
COPY package*.json ./

# Instala as dependências do projeto
RUN npm install

# Copia todos os outros arquivos do projeto para o container
COPY . .

# Expõe a porta 3000 para acesso externo
EXPOSE 3000

# Comando para rodar a aplicação
CMD [ "node", "app.js" ]
