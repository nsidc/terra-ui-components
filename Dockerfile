FROM ubuntu:22.04

SHELL ["/bin/bash", "-lo", "pipefail", "-c"]

RUN mkdir /app/

WORKDIR /app/

COPY . .

RUN apt update && apt install -y curl libatomic1

ENV BASH_ENV="${HOME:-/root}/.bash_env"
RUN touch "${BASH_ENV}"
RUN echo '. "${BASH_ENV}"' >> ~/.bashrc

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.8/install.sh | PROFILE="${BASH_ENV}" bash

RUN rm -rf node_modules/

RUN nvm install lts/krypton && nvm use lts/krypton && npm install

CMD ["bash -lc npm start"]
