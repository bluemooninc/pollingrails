FROM mhart/alpine-node:base

ENV PATH /root/.yarn/bin:$PATH

RUN apk update \
  && apk add curl bash binutils tar \
  && rm -rf /var/cache/apk/* \
  && /bin/bash \
  && touch ~/.bashrc \
  && curl -o- -L https://yarnpkg.com/install.sh | bash \
  && apk del git curl tar binutils

RUN apk add --update nodejs nodejs-npm
RUN npm install -g create-react-app

# ディレクトリを移動する
WORKDIR /root

# ポート3000番を開放する
EXPOSE 8080

CMD ["bash"]