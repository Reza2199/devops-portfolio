# Use lightweight Alpine-based Nginx image
FROM nginx:alpine

# Change default Nginx port from 80 to 8080 to meet requirements
RUN sed -i 's/listen  *80;/listen 8080;/g' /etc/nginx/conf.d/default.conf

# Copy your CV into the Nginx html directory
COPY index.html /usr/share/nginx/html/

# Expose port 8080
EXPOSE 8080