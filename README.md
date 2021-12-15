# Ansible Collection - eriol.kit

Ansible roles that I wrote for my own use.

## Installation

Create a `requirements.yml` with the following content:

```yaml
---
collections:
  - name: https://noa.mornie.org/eriol/ansible-collection-kit
    type: git
    version: 0.5.8
```

and then, using ansible >= 2.10, run:

```
ansible-galaxy collection install -r requirements.yml
```
