---
title: metasploit
layout: page
---
# Metasploit

## Payloads
* [Creating Metasploit Payloads](http://netsec.ws/?p=331)
* [veil-evasion](https://toshellandback.com/2015/09/30/anti-virus/)

## listeners / multi handlers
* https://github.com/rapid7/metasploit-framework/wiki/How-to-use-a-reverse-shell-in-Metasploit

## sniffer
* [msf sniffer](https://www.offensive-security.com/metasploit-unleashed/packet-sniffing/)

## slow search
* https://netsec.ws/?p=303
* https://miteshshah.github.io/linux/kali/how-to-fix-metasploit-database-not-connected-or-cache-not-built/

```
systemctl start postgresql
systemctl enable postgresql
msfdb init
msf> db_rebuild_cache
```
