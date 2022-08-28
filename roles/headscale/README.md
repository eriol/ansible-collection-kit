# headscale

Install and configure [headscale](https://github.com/juanfont/headscale).

## Role variables

* `headscale_become` - Default: true. Enable/disable the Ansible become
  functionality.
* `headscale_become_user` - Default: root. When using become functionality for
  privilege escalation, this is the user with desired privileges you become.
* `headscale_dir` - Default: /srv/headscale. Directory where headscale will be
  installed.
