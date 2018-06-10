---
title: enumeration
layout: page
---
# General Enumeration Notes

## Phineas FinFisher
### Scanning
Scan all the IP ranges you found with nmap to find all services running. Aside
from a standard port scan, scanning for SNMP is underrated.

Now for each service you find running:

1) Is it exposing something it shouldn't? Sometimes companies will have
services
running that require no authentication and just assume it's safe because the
url
or IP to access it isn't public. Maybe fierce found a git subdomain and you can
go to git.companyname.come/gitweb/ and browse their source code.

2) Is it horribly misconfigured? Maybe they have an ftp server that allows
anonymous read or write access to an important directory. Maybe they have a
database server with a blank admin password (lol stratfor). Maybe their
embedded
devices (VOIP boxes, IP Cameras, routers etc) are using the manufacturer's
default password.

3) Is it running an old version of software vulnerable to a public exploit?

## References
* [bad ssh keys](https://github.com/rapid7/ssh-badkeys)

### Windows Internal Enum
* [1](https://github.com/PowerShellEmpire/PowerTools/tree/master/PowerView)
* [2](http://www.harmj0y.net/blog/tag/powerview/)
* [3](http://www.harmj0y.net/blog/powershell/veil-powerview-a-usage-guide/)
* [4](http://www.harmj0y.net/blog/redteaming/powerview-2-0/)
* [5](http://www.harmj0y.net/blog/penetesting/i-hunt-sysadmins/)

## nmap
* http://ostrokonskiy.tk/2017/01/11/nmap-cheatsheet/
### port knock
* [knockknock](https://github.com/pan0pt1c0n/knock-knock)
* [f4linsn0w knock.py](https://f4l13n5n0w.github.io/blog/2015/06/21/vulnhub-knock-knock-1-dot-1/)
* [portknocking.org/](http://www.portknocking.org/)
* [n0where.net knock knock](https://n0where.net/ssh-port-knocking/)

## NFS
* [nfspy examples](http://cyborg.ztrela.com/nfspy-and-nfspysh.php/)
