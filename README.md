# Ansible-lint

[![Docker Pulls](https://img.shields.io/docker/pulls/haxorof/ansible-lint)](https://hub.docker.com/r/haxorof/ansible-lint/)
[![CI](https://github.com/haxorof/docker-ansible-lint/workflows/CI/badge.svg)](https://github.com/haxorof/docker-ansible-lint/actions?query=workflow%3ACI)

> "ansible-lint checks playbooks for practices and behaviour that could potentially be improved"
[ansible-lint](https://github.com/willthames/ansible-lint)

## How to use this image

```console
docker run -it --rm -v ${PWD}:/mnt:ro haxorof/ansible-lint
```

## Bash aliases

To make it easier to use this container you could setup bash aliases by creating `~/.bash_aliases` with the following contents:

```bash
alias ansible-lint='docker run -it --rm -v ${PWD}:/mnt:ro haxorof/ansible-lint'
```