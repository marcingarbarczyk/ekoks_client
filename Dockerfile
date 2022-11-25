FROM node:18.12.1

# Install global npm packages
RUN npm i -g @angular/cli@15.0.0

# Set working directory
WORKDIR /opt/project

# Copy local npm packages
COPY ./package.json /opt/project/

# Copy the remaining source code
COPY . .
