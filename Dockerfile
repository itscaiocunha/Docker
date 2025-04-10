#usa a imagem base oficial com Node.js na versâo 20
FROM node:20


#Define o diretorio de trabalho dentro do container
WORKDIR /app

COPY . /app


#Instalar a dependencia do express para o node, sem o package.jason
# sem o package.json
RUN npm install express

#Expor a porta 3000 para acesso externo ao container for iniciado
EXPOSE 3000


#Comando que sera executado quando o container for iniciado
CMD ["node","server.js"]