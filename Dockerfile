FROM node:15
# Create app directory
WORKDIR /app
# Install app dependencies
COPY package.json .
RUN npm install
# Bundle app source
COPY . ./
ENV PORT 3000
EXPOSE $PORT
CMD [ "npm", "run", "dev" ]