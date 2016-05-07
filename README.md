# argo-provisioner

**Provisioner with Ansible for Argo computing cluster.**

<br>
<img height=480 src=https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xfp1/t31.0-8/12771850_10206348697700430_3178212860546745235_o.jpg>
<br>
<br>

**Start a build**
```bash
$ ansible-playbook -i hosts/cluster.all-hosts -k --ask-become-pass tiers/bare-init.yml
$ ansible-playbook -i hosts/cluster.all-hosts tiers/common.yml
```
