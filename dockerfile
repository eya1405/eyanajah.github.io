# Image de base Nginx Alpine (légère)
FROM nginx:alpine

# Copier les fichiers du CV dans le répertoire Nginx
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/

# Exposer le port 80
EXPOSE 80

# Démarrer Nginx en mode foreground
CMD ["nginx", "-g", "daemon off;"]