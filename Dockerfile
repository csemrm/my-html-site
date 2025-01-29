# Use an Nginx base image
FROM nginx:alpine

# Remove the default Nginx HTML files
RUN rm -rf /usr/share/nginx/html/*

# Copy your HTML files into the container
COPY . /usr/share/nginx/html

# Expose the default Nginx port
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]

