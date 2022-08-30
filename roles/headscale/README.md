# headscale

Install and configure [headscale](https://github.com/juanfont/headscale).

## Role variables

* `headscale_become` - Default: `true`. Enable/disable the Ansible become
  functionality.
* `headscale_become_user` - Default: `root`. When using become functionality
  for privilege escalation, this is the user with desired privileges you
  become.
* `headscale_dir` - Default: `/srv/headscale`. Directory where headscale will
  be installed.
* `headscale_server_url` - Default: `http://127.0.0.1:8080`.
* `headscale_listen_addr` - Default: `0.0.0.0:8080`. Address headscale listen
   to.
* `headscale_nameservers` - Default `['1.1.1.1']`.
* `headscale_base_domain` - Default: `example.org`.

## Example Playbook

```yaml
- hosts: my-server
  vars:
    headscale_base_domain: headscale.example.org
  roles:
    - eriol.kit.headscale
```
