# Tailscale

Install tailscale from tailscale.com repository.

## Role Variables

* `tailscale_become` - Default: true. Enable/disable the Ansible become
  functionality.
* `tailscale_become_user` - Default: root. When using become functionality for
  privilege escalation, this is the user with desired privileges you become.

## Example Playbook

```yaml
- hosts: my-server
  roles:
    - eriol.kit.tailscale
```
