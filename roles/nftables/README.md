# nftables

Installs and configures nftables.

## Role variables

* `nftables_become` - Default: true. Enable/disable the Ansible become
  functionality.
* `nftables_become_user` - Default: root. When using become functionality for
  privilege escalation, this is the user with desired privileges you become.
* `nftables_input_policy` - Default: drop. Policy of input chain.
* `nftables_forward_policy` - Default: drop. Policy of forward chain.
* `nftables_output_policy` - Default: drop. Policy of output chain.
* `nftables_nat_prerouting_rules` - Default: []. List of NAT prerouting rules.
* `nftables_input_rules` - Default: []. List of input rules.
* `nftables_forward_rules` - Default: []. List of forward rules.
* `nftables_output_rules` - Default: []. List of output rules.

## Example playbook

```yaml
- hosts: my-server
  vars:
    nftables_output_policy: accept
    nftables_nat_prerouting_rules:
      - tcp dport 25 redirect to :2525
      - tcp dport 587 redirect to :2587
      - tcp dport 993 redirect to :9993
    nftables_input_rules:
      - tcp dport ssh ct state new limit rate 15/minute accept
  roles:
    - eriol.kit.nftables
```
