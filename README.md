ansible-ca
=========

Deploys OpenSSL, a certificate authority.


To generate a new standard or p12 certificate:
	* login to the int authority as ortsoc-admin
	* run /ca-stuff/GenerateCertificate.sh [name] or/ca-stuff/GenerateP12Cert.sh [name]
	* Both will require a passphrase when generating the RSA key
	* To decrypt the RSA key run: openssl rsa -in [keyfile.key]

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
