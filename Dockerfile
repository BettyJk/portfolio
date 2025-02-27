# Use an official lightweight web server image
FROM nginx:alpine

# Copy index.html to the Nginx HTML folder
COPY index.html /usr/share/nginx/html/

# Copy the assets folder to the Nginx HTML folder
COPY assets /usr/share/nginx/html/assets

# Expose port 80 (the default HTTP port)
EXPOSE 80

# Start the Nginx server when the container starts
CMD ["nginx", "-g", "daemon off;"]