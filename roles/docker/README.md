# Docker

Install docker from docker.com repository.

## Role Variables

* `docker_become` - Default: true. Enable/disable the Ansible become
  functionality.
* `docker_become_user` - Default: root. When using become functionality for
  privilege escalation, this is the user with desired privileges you become.

## Example Playbook

```yaml
- hosts: my-server
  roles:
    - eriol.kit.docker
```
