ssh_pubkey_login
=========

Role for copying local ssh private key to managed hosts.
Only need ansible raw module to install new keys, so could work for seeding a managed machine.

Requirements
------------

On the managing machine, Python Modules:
* ansible>=2.2
* jinja2>=2.7

On the Remote machine:
* shell, e.g. /bin/sh
* `echo` command

Role Variables
--------------

N/A

Dependencies
------------

* `gzm55.local_ansible_config`
* `gzm55.require_local_command`

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
      - gzm55.ssh_pubkey_login

License
-------

BSD
