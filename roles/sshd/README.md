# sshd

Installs and configures openssh server.

## Role variables

* `sshd_become` - Default: true. Enable/disable the Ansible become
  functionality.
* `sshd_become_user` - Default: root. When using become functionality for
  privilege escalation, this is the user with desired privileges you become.
* `sshd_port` - Default: 22. The port openssh server listen to.

## Example playbook

```yaml
- hosts: my-server
  vars:
    sshd_port: 1234
  roles:
    - eriol.kit.sshd
```
