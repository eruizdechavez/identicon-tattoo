FROM node:20
WORKDIR /app
COPY . .
RUN apt update -y && \
  apt install montage -y && \
  npm install && \
  mkdir -p /tmp/identicon-tattoo
CMD ./app.sh
