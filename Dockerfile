# Imagem de Origem
FROM node:13-alpine
# Diretório de trabalho(é onde a aplicação ficará dentro do container).
WORKDIR /app

# Instalando dependências da aplicação e armazenando em cache.
COPY . .
RUN yarn install 
# start app
EXPOSE 3000
CMD ["yarn", "start"]