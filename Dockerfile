FROM python:2-alpine

RUN apk add --no-cache linux-headers \
    build-base \
    libffi-dev \
    openssl-dev \
    && pip install ansible-lint \
    && rm -rf /root/.cache

VOLUME ["/mnt"]

WORKDIR /mnt

ENTRYPOINT [ "ansible-lint" ]