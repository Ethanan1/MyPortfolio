# Use the Nginx image from Docker Hub as the base image
FROM nginx:alpine

# Copy the static HTML and CSS files into the Nginx container
COPY ./OPEN-EDITORS /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
