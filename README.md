ansible-ca
=========

Deploys OpenSSL, a certificate authority.

Requirements
------------

- Debian 10
- sudo
- ssh

Inventory Host Variables
---------------

- `ca_type`: distinguish root or intermediate ca. Options:
  - `root`: set CA as root.
  - `int`: set CA as intermediate.

Example Inventory File
------------

```
[ca]
ca.my.domain ca_type=root
ca.my.domain ca_type=int
```

License
-------

GPL3

Author Information
------------------

ORTSOC, Oregon State University
