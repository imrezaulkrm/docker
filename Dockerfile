# Use the official Nginx base image
FROM nginx:latest

# Copy your HTML files to the Nginx document root
COPY index.html /usr/share/nginx/html

# Expose port 80 to outside world
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]

