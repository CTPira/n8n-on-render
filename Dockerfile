FROM node:18-alpine

# Instala dependências do sistema
RUN apk add --no-cache \
  bash \
  curl \
  python3 \
  make \
  g++ \
  openssl

# Cria diretório de trabalho
WORKDIR /usr/app

# Instala n8n globalmente
RUN npm install n8n -g

# Expõe a porta padrão
EXPOSE 5678

# Comando de inicialização
CMD ["n8n", "start"]
