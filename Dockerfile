FROM python:2-alpine

RUN apk add --no-cache linux-headers \
    build-base \
    libffi-dev \
    openssl-dev \
    git \
    openssh \
    && pip install ansible-lint \
    && rm -rf /root/.cache \
    && git clone https://github.com/ansible/galaxy-lint-rules.git

COPY ansible-lint-with-rules /usr/bin/

VOLUME ["/mnt"]

WORKDIR /mnt

ENTRYPOINT [ "sh", "-c", "/usr/bin/ansible-lint-with-rules" ]