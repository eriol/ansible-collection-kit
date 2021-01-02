# apt_dist_upgrade

Shows the packages to be upgraded and perform a dist upgrade.

## Role variables

* `apt_dist_upgrade_become` - Default: true. Enable/disable the Ansible become
  functionality.
* `apt_dist_upgrade_become_user` - Default: root. When using become functionality for
  privilege escalation, this is the user with desired privileges you become.

## Example playbook

```yaml
- hosts: my-server
  roles:
    - eriol.kit.apt_dist_upgrade
```
