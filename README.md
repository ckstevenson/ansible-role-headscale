Headscale
=========

Install [headscale](https://github.com/juanfont/headscale), an open source and self-hosted implementation of the Tailscale control server, as well as configure a namespace.

Requirements
------------

Everyting to install headscale is satisfied with the ansible.builtin collection.

Role Variables
--------------

./defaults/main.yml
```.yml
headscale_version: '0.15.0'
headscale_namespaces:
  - 'default'
headscale_user: 'headscale'
```

Dependencies
------------

No role dependencies.

Dev Dependencies
------------

* python-poetry
* [just](https://github.com/casey/just)
* Virtualbox (need to switch with KVM/QEMU)
* Vagrant

Example Playbook
----------------

```.yml
---
# example playbook to deploy headscale

- name: Headscale
  hosts: all
  become: true
  vars:
    user: 'cameron'
    headscale_namespaces:
      - 'homelab'
  tasks:
    - name: "Include ckstevenson.base"
      include_role:
        name: "ckstevenson.base"

    - name: "Include ckstevenson.headscale"
      include_role:
        name: "ckstevenson.headscale"
```

License
-------

MIT
