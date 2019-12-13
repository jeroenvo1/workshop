# docker image build -t workshop_api_image .
# docker run -d -p 82:82 --name workshop_api_container workshop_api_image

FROM node:9.5.0

# Create app directory
WORKDIR /app/api

# Copy app dependencies to container
COPY api/package.json /app

# Install app dependencies
RUN npm install

# Bundle app source
COPY . /app

# Define run command
CMD node index.js

# Expose port
EXPOSE 82:82