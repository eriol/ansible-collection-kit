# Admin

Create an admin user that is added to the `sudo` group.

## Role Variables

* `admin_become` - Default: true. Enable/disable the Ansible become
  functionality.
* `admin_become_user` - Default: root. When using become functionality for
  privilege escalation, this is the user with desired privileges you become.
* `admin_user` - Username of the admin account.
* `admin_password` - Password of the admin account.
* `admin_key_file` - Path to the ssh public key of the admin account.

## Example Playbook

```yaml
- hosts: my-server
  vars:
    admin_user: administrator
    admin_password: the_secret_password
    admin_key_file: /path/to/ssh/key.pub
  roles:
    - eriol.kit.admin
```
