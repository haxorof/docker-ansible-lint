# Ansible-lint + Ansible Galaxy rules

[![Docker Pulls](https://img.shields.io/docker/pulls/haxorof/ansible-lint.svg)](https://hub.docker.com/r/haxorof/ansible-lint/)
[![Docker Build Status](https://img.shields.io/docker/build/haxorof/ansible-lint.svg)](https://hub.docker.com/r/haxorof/ansible-lint/builds/)
[![Docker Automated build](https://img.shields.io/docker/automated/haxorof/ansible-lint.svg)](https://hub.docker.com/r/haxorof/ansible-lint/builds/)

> "ansible-lint checks playbooks for practices and behaviour that could potentially be improved"
[ansible-lint](https://github.com/willthames/ansible-lint)

In addition to standard ansible-lint, Ansible Galaxy rules are included and used by default.

## How to use this image

```console
docker run -it --rm -v ${PWD}:/mnt:ro haxorof/ansible-lint
```

## Bash aliases

To make it easier to use this container you could setup bash aliases by creating `~/.bash_aliases` with the following contents:

```bash
alias ansible-lint='docker run -it --rm -v ${PWD}:/mnt:ro haxorof/ansible-lint'
```