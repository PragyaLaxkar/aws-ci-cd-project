# Use the official nginx image as base
FROM nginx:alpine

# Copy the static website files to nginx's serving directory
COPY . /usr/share/nginx/html/

# Remove the default nginx configuration
RUN rm /etc/nginx/conf.d/default.conf

# Copy custom nginx configuration
COPY nginx.conf /etc/nginx/conf.d/

# Expose port 80
EXPOSE 80

# Start nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
