# AdGuard Home

Installs and configure [AdGuard Home](https://adguard.com/en/adguard-home/overview.html).

## Role variables

* `adguardhome_become` - Default: true. Enable/disable the Ansible become
  functionality.
* `nftables_become_user` - Default: root. When using become functionality for
  privilege escalation, this is the user with desired privileges you become.
* `adguardhome_dir` - Default: /srv/AdGuardHome. Directory where AdGuard Home
  will be installed.
* `adguardhome_user` - Default: admin. Username for AdGuard Home web interface.
* `adguardhome_password` - Default: changeme. Password for AdGuard Home web
  interface.
* `adguardhome_bind_host` - Default: 0.0.0.0.
* `adguardhome_upstream_dns` - Default: ["https://dns10.quad9.net/dns-query"].
  List of upstream dns.
* `adguardhome_add_to_ssl_cert_group` Default: false
