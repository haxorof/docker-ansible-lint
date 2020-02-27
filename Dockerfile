FROM python:3.8.2-alpine

COPY requirements.txt .

RUN apk add --no-cache linux-headers \
    build-base \
    libffi-dev \
    openssl-dev \
    git \
    openssh \
    sshpass \
    && python3 -m pip install --no-cache-dir --upgrade pip \
    && python3 -m pip install --no-cache-dir -r requirements.txt \
    && rm -rf /var/cache/apk/* \
    && rm -rf /root/.cache

VOLUME ["/mnt"]

WORKDIR /mnt

ENTRYPOINT [ "ansible-lint" ]