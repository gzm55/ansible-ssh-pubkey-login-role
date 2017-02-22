ssh_pubkey_login
================

Role for copying local ssh public keys to managed hosts.
Only need ansible raw module on remote hosts to install new keys,
so could work for seeding a managed machine.

Basic method is the same as ssh-copyid:
- Try ssh login only by pubkey
- If login fail, copy all known public keys to the hosts via raw module

Requirements
------------

On the control machine, Python Modules:
* ansible>=2.2
* jinja2>=2.7
* pexpect>=3.3

On the control machine, commands:
* `cat` command
* `ssh` command
* (optional) `ssh-keygen` command
* (optional) `ssh-add` command

On the Remote machine:
* a shell of type `sh`, `csh` or `fish`
* `echo` command
* (optional) `grep` command

Role Variables
--------------

N/A

Dependencies
------------

* `gzm55.require_implicity_localhost`
* `gzm55.require_disabe_become`
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
