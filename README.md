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

`freight.conf.erb`
The default configuration file.

`apt_repo.conf.erb`
Apache Virtualhost container configuration for the repository.

Resources (TO DO)
=================

`freight_manage`

## Resource Attributes

`package` (Required)

`manager` (Required)

`distro` (Required)

## Available Actions

`add` (Default action)

`remove`

## Example

Usage
=====

Known Issues
============

 * Unsure why at the moment, but it seems that the `gpg` cookbook always fails on the first chef run while running apt-get. The next chef run goes smoothly. Need to investidate cause.

Contributing
============

If you feel like chipping in and have Vagrant installed, feel free to clone my vagrant development setup, [freight-cooking](http://github.com/patcon/freight-cooking). Just install the [`librarian` gem](http://github.com/applicationsonline/librarian) and run `librarian-chef install`, then `vagrant up` to get running.

## Soundtrack

[The Magician and the Gates of Love - "I Want It All"](http://grooveshark.com/s/I+Want+It+All/4cyoHm)
