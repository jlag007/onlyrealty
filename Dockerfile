# Use nginx to serve the static site
FROM nginx:stable-alpine

# Remove default nginx index if present (avoid serving a directory listing)
RUN rm -rf /usr/share/nginx/html/*

# Copy repo contents into nginx html dir
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Run nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
