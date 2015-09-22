test(Work in progress)

Bitbucket version

# provisioner-archarm-cluster
Provisioner with Ansible for ArchARM cluster

/opt/local/python2.7/current/bin/ansible-playbook -i hosts/cluster.all-hosts -k --ask-become-pass tiers/bare-init.yml
/opt/local/python2.7/current/bin/ansible-playbook -i hosts/cluster.all-hosts tiers/common.yml

