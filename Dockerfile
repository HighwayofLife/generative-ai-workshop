# Use the official Nginx image as a base
FROM nginx:alpine

# Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy website files from local directory to the Nginx html directory
COPY ./docs /usr/share/nginx/html

# Expose port 8080
EXPOSE 8080

# Change Nginx config to listen to port 8080
RUN echo "server { listen 8080; location / { root /usr/share/nginx/html; index index.html index.htm; } }" > /etc/nginx/conf.d/default.conf

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
