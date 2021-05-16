# ansible-ca
ORTSOC Infra Role: Certificate Authority

add `ca_type=root` to root ca in inventory file.
add `ca_type=int` to intermediate ca in inventory file.

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


License
-------

GPL3

Author Information
------------------

ORTSOC, Oregon State University
