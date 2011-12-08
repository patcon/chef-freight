Description
===========

Installs and configures Freight, a spiritual successor to Reprepro.

https://github.com/rcrowley/freight

http://rcrowley.org/articles/packaging.html

Requirements
============

## Platform:

Tested on Ubuntu 10.04. Should work on Debian 5.0 & 6.0 or Ubuntu 10.04, 10.10, 11.04, 11.10 & 12.04.

Attributes
==========

`freight['varlib']`
The Freight library directory. (Default: `/var/lib/freight/`)

`freight['varcache']`
The Freight cache directory. The Apache document root will be set to this value. (Default: `/var/cache/freight`)

`freight['archs']`
The architectures to support. (Default: `[ "i385", "amd64" ]`)

`freight['origin']`
The Origin field in the Debian archive. (Default: `Freight`)

`freight['label']`
The Label field in the Debian archive. (Default: `Freight`)

`freight['gpg']`
The GPG key to use. Typically an email address. (Default: `example@example.com`)

Templates
=========

`freight.conf`
The default configuration file.

Usage
=====

## Soundtrack

[The Magician and the Gates of Love - "I Want It All"](http://grooveshark.com/s/I+Want+It+All/4cyoHm)
