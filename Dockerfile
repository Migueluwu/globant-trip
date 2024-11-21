# Imagen base
FROM node:alpine

#Crear directorio de trabajo
WORKDIR /app

# Copia el package.json
COPY package*.json .

# Instalar las dependencias
RUN npm install

# Copiar el src
COPY src src

# Copia public
COPY public public

# despliega la aplicacion
CMD ["npm", "start"]

# Exponer el puerto del servidor web
EXPOSE 3000
