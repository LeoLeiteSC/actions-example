# Set the base image to use for subsequent instructions
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/src

# Copy any source file(s) required for the action
COPY entrypoint.sh .

COPY . /usr/share/nginx/html

# Configure the container to be run as an executable
ENTRYPOINT ["/usr/src/entrypoint.sh"]
