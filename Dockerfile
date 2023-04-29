FROM node:20
WORKDIR /app
COPY . .
RUN apt update -y && \
  apt install montage -y && \
  npm install && \
  mkdir -p /tmp/identicon-tattoo
CMD node app.mjs && \
  montage /tmp/identicon-tattoo/*.png \
    -background none \
    -tile 2x \
    -geometry +0+0 \
    /tmp/identicon-tattoo/tattoo.png && \
  montage /tmp/identicon-tattoo/tattoo.png \
    -background none \
    -border 100 \
    -bordercolor none \
    -tile 1x \
    -geometry +0+0 \
    out/tattoo.png
