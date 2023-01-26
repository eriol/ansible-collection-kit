# Telegraf

Install telegref from influxdata.com repository.

## Role Variables

* `telegraf_become` - Default: true. Enable/disable the Ansible become
  functionality.
* `telegraf_become_user` - Default: root. When using become functionality for
  privilege escalation, this is the user with desired privileges you become.
* `telegraf_configs` - Default: []. List of configuration files with name and
  content. See example below.

**NOTE:** For the agent configuration the default is used, no override at the
moment is provided.

## Example Playbook

The configuration is split in 2 files only to show it: you may want to have
only one system_performance.conf.

```yaml
- hosts: my-server
  vars:
    telegraf_configs:
      - name: cpu.conf
        content: |
          [[outputs.something]]
          # Your output plugin of choice

          [[inputs.cpu]]
            percpu = true
            totalcpu = true

      - name: diskio.conf
        content: |
          [[outputs.something]]
          # Your output plugin of choice

          [[input.diskio]]
  roles:
    - eriol.kit.telegraf
```
