# Use lightweight nginx image
FROM nginx:alpine

# Remove default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your project files to nginx web directory
COPY public /usr/share/nginx/html
COPY assets /usr/share/nginx/html/assets

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
