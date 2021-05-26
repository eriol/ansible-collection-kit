# mosquitto

Install and configure [mosquitto](https://mosquitto.org/).

## Role Variables

* `mosquitto_become` - Default: true. Enable/disable the Ansible become
  functionality.
* `mosquitto_become_user` - Default: root. When using become functionality for
  privilege escalation, this is the user with desired privileges you become.
* `mosquitto_certfile` - Default: "". Server certificate.
* `mosquitto_keyfile` - Default: "". Server key.
* `mosquitto_cafile` - Default: "". CA certificate.
