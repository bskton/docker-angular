FROM node:10.0.0

RUN apt-get update && apt-get install -y curl xvfb chromium

RUN yarn global add @angular/cli

ADD xvfb-chromium /usr/bin/xvfb-chromium
RUN ln -s /usr/bin/xvfb-chromium /usr/bin/google-chrome && \
ln -s /usr/bin/xvfb-chromium /usr/bin/chromium-browser && \
chmod +x /usr/bin/xvfb-chromium

ENV CHROME_BIN=/usr/bin/xvfb-chromium

WORKDIR /app

EXPOSE 4200 9876

CMD ["ng", "serve", "--host=0.0.0.0"]