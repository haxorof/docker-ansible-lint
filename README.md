# Ansible-lint

[![Docker Pulls](https://img.shields.io/docker/pulls/haxorof/ansible-lint)](https://hub.docker.com/r/haxorof/ansible-lint/)
[![CI](https://github.com/haxorof/docker-ansible-lint/workflows/CI/badge.svg)](https://github.com/haxorof/docker-ansible-lint/actions?query=workflow%3ACI)

> "ansible-lint checks playbooks for practices and behaviour that could potentially be improved"
[ansible-lint](https://github.com/willthames/ansible-lint)

## Simple Tags

- `v6-almalinux`
- `v6-alpine`
- `v5-almalinux`
- `v5-alpine`

## Shared Tags

- `v6`, `latest-alpine`, `latest`
  - `v6-alpine`
- `v5`
  - `v5-alpine`
- `latest-almalinux`
  - `v6-almalinux`

## How to use this image

```console
docker run -it --rm -v ${PWD}:/mnt:ro haxorof/ansible-lint
```

## Bash aliases

To make it easier to use this container you could setup bash aliases by creating `~/.bash_aliases` with the following contents:

```bash
alias ansible-lint='docker run -it --rm -v ${PWD}:/mnt:ro haxorof/ansible-lint'
```

## Use in Github Actions

```yaml
name: Linting
on:
  push:
    branches:
      - master
  pull_request:
    branches:
      - master

jobs:
  validate:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v2
      - name: Ansible Linting
        run: docker run --rm -v ${GITHUB_WORKSPACE}:/mnt haxorof/ansible-lint -v --force-color .
```
