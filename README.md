# provisioner-archarm-cluster
Provisioner with Ansible for ArchARM cluster

$ ansible-playbook -i hosts/cluster.all-hosts -k --ask-become-pass tiers/bare-init.yml
$ ansible-playbook -i hosts/cluster.all-hosts tiers/common.yml
