FROM nginx:alpine

# Clean default nginx HTML folder
RUN rm -rf /usr/share/nginx/html/*

# Copy everything in current dir to nginx html
COPY . /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
