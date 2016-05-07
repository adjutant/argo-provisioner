# argo-provisioner
Provisioner with Ansible for Argo cluster.

```bash
$ ansible-playbook -i hosts/cluster.all-hosts -k --ask-become-pass tiers/bare-init.yml
$ ansible-playbook -i hosts/cluster.all-hosts tiers/common.yml
```
