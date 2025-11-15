FROM node:20

# Install git to be able to clone your repo
RUN apt-get update && apt-get install -y git

# Copy startup script into container
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Set a working directory where your repo will be cloned
WORKDIR /app

EXPOSE 3000

# Run the script on container startup
ENTRYPOINT ["/start.sh"]
