# mailserver

Install and configure postfix, dovecot, opendkim and rspamd.

## Role Variables
* `mailserver_become` - Default: true. Enable/disable the Ansible become
  functionality.
* `mailserver_become_user` - Default: root. When using become functionality for
   privilege escalation, this is the user with desired privileges you become.
- `mailserver_vmail_user` - Default: vmail. User that handle virtual mail.
- `mailserver_vmail_uid` - Default: 150. uid of the user that handle virtual mail.
- `mailserver_vmail_group` - Default: mail. group of the user that handle virtual mail.
- `mailserver_vmail_dir` - Default: /var/vmail. Directory where emails are stored.
- `mailserver_mailname` - Default: mail.example.org.
- `mailserver_auth_database` - Default: /etc/dovecot/authdb.sqlite.
- `mailserver_tls_cert_file` - Default: "/var/lib/dehydrated/certs/{{ mailserver_mailname }}/fullchain.pem"
- `mailserver_tls_key_file` - Default: "/var/lib/dehydrated/certs/{{ mailserver_mailname }}/privkey.pem"
- `mailserver_dkim_selector` - Default: 2022. DKIM selector.
