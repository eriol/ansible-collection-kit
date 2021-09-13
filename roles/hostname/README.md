# Hostname

Sets the hostname to a specified value and configure the 127.0.1.1 entry of
/etc/hosts to the same value. Optionally it will also other aliases inside
/etc/hosts.

## Role Variables

* `hostname_become` - Default: true. Enable/disable the Ansible become
  functionality.
* `hostname_become_user` - Default: root. When using become functionality for
  privilege escalation, this is the user with desired privileges you become.
* `hostname` - The hostname to set.
* `hostname_update_etc_hosts` - Default: If true update 127.0.1.1 entry in
  /etc/hosts with hostname and aliases.
* `hostname_aliases` - Default: []. Optional array of hostnames set into
  /etc/hosts.

## Example Playbook

```yaml
- hosts: my-server
  vars:
    hostname: example.org
    hostname_aliases:
      - example
  roles:
    - eriol.kit.hostname
```
