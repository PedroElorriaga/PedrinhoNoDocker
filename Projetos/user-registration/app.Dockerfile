FROM ubuntu:22.04
RUN apt-get update \
    && apt-get install -y curl gnupg \
    && curl -fsSL https://deb.nodesource.com/setup_14.x | bash - \
    && apt-get install nodejs -y
ARG MONGO=$MONGOIP
ENV MONGODB=$MONGO
WORKDIR /app
COPY package.json .
RUN npm i
EXPOSE 3000
COPY . .
CMD [ "node", "app.js" ]
