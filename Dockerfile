FROM node:24-alpine

# Create app directory
WORKDIR /app

# Install OmniRoute globally
RUN npm install -g omniroute

# Create persistent data directory
# RUN mkdir -p /data/omniroute

# Tell OmniRoute to use persistent storage
ENV OMNIROUTE_DATA_DIR=/data/omniroute
ENV OMNIROUTE_PUBLIC_BASE_URL=https://omniroute...com

EXPOSE 20128

CMD ["omniroute"]