# Step 1: Utilize the minimal, high-performance stable Nginx web engine
FROM nginx:alpine

# Step 2: Strip out default placeholder layout elements
RUN rm -rf /usr/share/nginx/html/*

# Step 3: Inject custom application portfolio file securely
COPY index.html /usr/share/nginx/html/index.html

# Step 4: Expose standard web traffic ports natively
EXPOSE 80

# Step 5: Boot the internal web server master task thread
CMD ["nginx", "-g", "daemon off;"]
