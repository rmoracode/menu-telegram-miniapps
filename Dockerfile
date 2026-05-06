# Usa una imagen ligera de Nginx basada en Alpine Linux
FROM nginx:alpine

# Elimina los archivos por defecto de Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia tu archivo index.html a la carpeta que sirve Nginx
# Si tienes carpetas de CSS o JS, se copiarán también
COPY . /usr/share/nginx/html

# Expone el puerto 80 (puerto por defecto de Nginx)
EXPOSE 80

# Arranca Nginx en primer plano
CMD ["nginx", "-g", "daemon off;"]
