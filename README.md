# argo-provisioner

**Provisioner with Ansible for Argo computing cluster.**


<br>
<img height=480 src=https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xfp1/t31.0-8/12771850_10206348697700430_3178212860546745235_o.jpg>
<br>
<br>

**Init new individual units**
```bash
$ ansible-playbook -i hosts/singles.new-hosts -k --ask-become-pass tiers/bare-init.yml
```

**Trigger common build for all hosts, after bare-init**
```bash
$ ansible-playbook -i hosts/cluster.all-hosts -e "hosts_group=slaves" tiers/common.yml
```
+ host_groups=all
+ host_groups=masters
+ host_groups=slaves
+ host_groups=xu4
+ host_groups=rpi2
+ host_groups=cubieboard2
