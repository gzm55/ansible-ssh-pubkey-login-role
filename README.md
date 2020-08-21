ssh_pubkey_login (1.0.3-dev)
============================

Role for copying local ssh public keys to managed hosts.
Only need ansible raw module on remote hosts to install new keys,
so could work for seeding a managed machine.

Basic method is the same as ssh-copyid:
- Try ssh login only by pubkey
- If login fail, copy all known public keys to the hosts via raw module

If a managed host has a `ansible_connection` other than `ssh`, `paramiko` or `smart`,
it will be skipped installing the public keys.

NOTE: If we specify private keys by `--private-key` ansible option,
the validating step will skip the keys from ssh agent,
which may cause fail if the specified keys is of types not supported by the remote servers.

Requirements
------------

On the control machine, Python Modules:
* ansible>=2.5
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

- `ansible_pubkey_login_is_disabled`, default is False, if set to True,
      this role skips install pubkey to remote machines, and have to login via password.

Dependencies
------------

* `gzm55.require_implicity_localhost`
* `gzm55.require_disabe_become`
* `gzm55.require_local_command`
* `gzm55.local_id_plugin`

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
      - gzm55.ssh_pubkey_login

License
-------

BSD
