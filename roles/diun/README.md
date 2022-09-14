# Diun

Install and configure [Diun](https://crazymax.dev/diun/).

## Role Variables

* `diun_become` - Default: `true`. Enable/disable the Ansible become
  functionality.
* `diun_become_user` - Default: `root`. When using become functionality for
  privilege escalation, this is the user with desired privileges you become.
* `diun_version` - Default: `v4.22.0`.
* `diun_dir` - Default: `/srv/diun`.
* `diun_tz` - Default: `Europe/Rome`.

Variable `diun_config` is mandatory and it doesn't have a default.

## Example Playbook

```yaml
- hosts: my-server
  vars:
    diun_config: |
      db:
        path: {{ diun_dir }}/diun.db

      watch:
        workers: 10
        schedule: "0 */6 * * *"
        firstCheckNotif: false

      providers:
        docker:
          watchStopped: true

      notif:
        mail:
          host: localhost
          port: 25
          ssl: false
          insecureSkipVerify: false
          from: diun@example.org
          to:
            - webmaster@example.org
            - me@example.org
  roles:
    - eriol.kit.diun
```

See https://crazymax.dev/diun/config/ for diun configuration details.
