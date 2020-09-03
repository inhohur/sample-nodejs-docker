FROM node:10.13.0 AS builder

WORKDIR /usr/src/app

COPY package*.json ./
COPY tsconfig*.json ./
COPY ./src ./src
RUN npm ci --quiet && npm run build

#
# Production stage.
# This state compile get back the JavaScript code from builder stage
# It will also install the production package only
#
FROM node:12.13.0-alpine

WORKDIR /app
ENV NODE_ENV=production

COPY package*.json ./
RUN npm ci --quiet --only=production

## We just need the build to execute the command
COPY --from=builder /usr/src/app/dist ./dist

EXPOSE 80
CMD [ "npm", "start" ]

# start!
#CMD [ "npm", "start" ]
#EXPOSE 80

# Install all Packages
#RUN npm install

# Copy all other source code to work directory
#ADD . /app

# TypeScript
#RUN tsc



