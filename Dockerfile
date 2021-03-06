FROM node:17.0.1-slim as builder

WORKDIR /build

COPY --chown=node:node package.json .
COPY --chown=node:node package-lock.json .

RUN chown -Rh $user:$user /build
USER $user

RUN npm install
COPY . .

EXPOSE  8800
CMD ["npm", "start"]

