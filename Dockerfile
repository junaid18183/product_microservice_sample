# FROM node:17.0.1-slim as builder

# WORKDIR /build
# COPY --chown=node:node package.json .
# COPY --chown=node:node package-lock.json .

# RUN chown -Rh $user:$user /build
# USER $user

# RUN npm ci
# COPY --chown=node:node . .
# RUN npm run build

FROM alpine
RUN apk add --update nodejs nodejs-npm
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
EXPOSE 8800
CMD ["npm", "start"]