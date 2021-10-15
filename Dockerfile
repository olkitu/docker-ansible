FROM python:3.9-slim

WORKDIR /app

RUN apt update && apt-get install -y openssh-client sshpass gcc\
    && python -m pip install ansible