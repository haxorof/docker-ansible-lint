FROM python:2-alpine

RUN apk add --no-cache linux-headers \
    build-base \
    libffi-dev \
    openssl-dev \
    git \
    openssh \
    && pip install ansible-lint \
    && rm -rf /var/cache/apk/* \
    && rm -rf /root/.cache

VOLUME ["/mnt"]

WORKDIR /mnt

ENTRYPOINT [ "ansible-lint" ]