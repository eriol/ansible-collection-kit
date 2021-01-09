# iptables

Installs and configures iptables.

## Role variables

* `iptables_become` - Default: true. Enable/disable the Ansible become
  functionality.
* `iptables_become_user` - Default: root. When using become functionality for
  privilege escalation, this is the user with desired privileges you become.
* `iptables_input_policy` - Default: drop. Policy of input chain.
* `iptables_forward_policy` - Default: drop. Policy of forward chain.
* `iptables_output_policy` - Default: drop. Policy of output chain.
* `iptables_rules` - Default: []. List of rules.

## Example playbook

```yaml
- hosts: my-server
  vars:
    iptables_output_policy: accept
    iptables_rules:
      - -A INPUT -p tcp -m tcp --dport 22 -j ACCEPT
      - -A INPUT -p tcp -m tcp --dport 80 -j ACCEPT
  roles:
    - eriol.kit.iptables
```
