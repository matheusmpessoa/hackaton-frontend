# Use uma Imagem Official do Node
FROM node:latest as build

# Definindo o diretório onde a aplicação será armazenada
WORKDIR /app

# Copiar os arquivos da pasta local para dentro do container
COPY package.json ./

# Instalar as dependências
RUN npm install

COPY . .

# Garante que será iniciado a aplicação.
CMD ["npm", "start"]