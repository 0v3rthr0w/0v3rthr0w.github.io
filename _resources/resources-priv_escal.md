---
title: priv_escal
layout: page
---
# How to Privilege Escalation

## concepts
* https://blog.g0tmi1k.com/2011/08/basic-linux-privilege-escalation/
    * Collect - Enumeration, more enumeration and some more enumeration.
    * Process - Sort through data, analyse and prioritisation.
    * Search - Know what to search for and where to find the exploit code.
    * Adapt - Customize the exploit, so it fits. Not every exploit work for every system "out of the box".
    * Try - Get ready for (lots of) trial and error.

## General Resources
* [RMusser01 Priv Esc](https://github.com/rmusser01/Infosec_Reference/)
    * [Post Exploitation](https://github.com/rmusser01/Infosec_Reference/blob/master/Draft/Privilege%20Escalation%20%26%20Post-Exploitation.md)

## Linux Resources
* [highoncoffee](https://highon.coffee/blog/linux-local-enumeration-script/)
* [netsec linux priv esc](https://netsec.ws/?p=309)
* [unix privesc check](https://github.com/pentestmonkey/unix-privesc-check)
    * [guide - pentestmonkey](http://pentestmonkey.net/tools/audit/unix-privesc-check)
* http://resources.infosecinstitute.com/privilege-escalation-linux-live-examples/
* [linux exploit suggester](https://github.com/PenturaLabs/Linux_Exploit_Suggester)
* [Local Linux Enumeration & Privilege Escalation Cheatsheet - rebootuser](https://www.rebootuser.com/?p=1623)
* [wildcards gone wild](https://www.exploit-db.com/papers/33930/)
* [kernel exploits](https://github.com/sohaip-hackerDZ/local-root-exploit-)
* [guide to linux priv esc](https://payatu.com/guide-linux-privilege-escalation/)

### mysql UDF command execution
* https://www.adampalmer.me/iodigitalsec/2013/08/13/mysql-root-to-system-root-with-udf-for-windows-and-linux/
* https://bernardodamele.blogspot.com/2009/01/command-execution-with-mysql-udf.html
* `select sys_exec('usermod -a -G admin john');`
* [root shell mysql user defined functions](https://infamoussyn.com/2014/07/11/gaining-a-root-shell-using-mysql-user-defined-functions-and-setuid-binaries/)

### Attempts
* If target listen for inbound file transfer doesn't work, try target request listening attacker
* Also, here methods for settign up a server for requesting from target.
    * `python -m SimpleHTTPServer 80` [found here](https://highon.coffee/blog/penetration-testing-tools-cheat-sheet/)
    * `impacket-smbserver $serv_name $local_dir`

### Kernel Exploits
* https://github.com/lucyoa/kernel-exploits
* https://github.com/SecWiki/linux-kernel-exploits
* https://github.com/BADC0D3/Unix-Privilege-Escalation-Exploits-Pack/tree/master/2014
* https://github.com/mzet-/linux-exploit-suggester

### Wild Cards
* [Back To The Future: Unix Wildcards Gone Wild](https://www.exploit-db.com/papers/33930/)

### Python Lib Injection
* [Privilege Escalation via Python Library Hijacking](https://www.rastating.com/privilege-escalation-via-python-library-hijacking/)
---

## Windows
* [Windows Privilege Escalation Fundamentals](http://www.fuzzysecurity.com/tutorials/16.html])
* [pwk accesschk](https://forums.offensive-security.com/showthread.php?t=4146)
* http://pentestmonkey.net/tools/windows-privesc-check
* https://it-ovid.blogspot.com/2012/02/windows-privilege-escalation.html
* https://www.gracefulsecurity.com/path-traversal-cheat-sheet-windows/
* [windows priv esc table](https://pentestlab.blog/2017/04/24/windows-kernel-exploits/)
* [token kidnapping windows 2003 poc exploit](http://nomoreroot.blogspot.com/2008/10/windows-2003-poc-exploit-for-token.html)
* [windows exploit suggester](https://github.com/GDSSecurity/Windows-Exploit-Suggester)
* [`pupy` process injection](https://github.com/n1nj4sec/pupy)
* [Security Notes Priv Esc](http://ostrokonskiy.tk/2017/01/23/windows-privilege-escalation/)
* [fingerprint OS version](https://security.stackexchange.com/questions/110673/how-to-find-windows-version-from-the-file-on-a-remote-system)
* https://technet.microsoft.com/en-us/library/cc754340(v=ws.11).aspx
* [priv esc cheat sheet](https://pentest.blog/windows-privilege-escalation-methods-for-pentesters/)

### Windows Exploits
* [abatchy17 WindoesExploits](https://github.com/BADC0D3/WindowsExploits)

### Passwords
* [jollyfrogs windows priv esc](https://pastebin.com/sUuqBGHk)
* [`fgdump`,`pwdump`, `lsadump`](./resources-password_cracking.md)

### Services
* [Services Control Manager](https://blog.didierstevens.com/2017/09/05/abusing-a-writable-windows-service/)

### Powershell

#### Privilege Escalation Finders
* [powersploit / PowerUp](https://github.com/PowerShellMafia/PowerSploit)
* [Sherlock.ps1](https://github.com/rasta-mouse/Sherlock)
* [3 ways to pass creds to powershell](https://ye110wbeard.wordpress.com/2012/05/21/three-ways-to-pass-credentials-in-a-powershell-script/)
* [ PowerUp ](https://github.com/PowerShellEmpire/PowerTools/tree/master/PowerUp)
* [bypassuac](https://github.com/PowerShellEmpire/Empire/blob/master/data/module_source/privesc/Invoke-BypassUAC.ps1)

### group policy GPP
* [Finding passwords in SYSVOL and exploit group policy](https://adsecurity.org/?p=2288)
* [Get-GPPPassword](https://github.com/PowerShellMafia/PowerSploit/blob/master/Exfiltration/Get-GPPPassword.ps1)
* [Well, That Escalated Quickly](https://toshellandback.com/2015/11/24/ms-priv-esc/)
* [What you know about GPP](https://www.toshellandback.com/2015/08/30/gpp/)

## Binaries
* [netcat](https://eternallybored.org/misc/netcat/)

--- 

### jollyfrogs
* https://blog.netspi.com/windows-privilege-escalation-part-1-local-administrator-privileges/
* https://blog.netspi.com/windows-privilege-escalation-part-2-domain-admin-privileges/
* [Elevating privileges by exploiting weak folder permissions](http://www.greyhathacker.net/?p=738)
* [0x8 Exploit Tutorial: The Elusive Egghunter](http://www.primalsecurity.net/0x8-exploit-tutorial-the-elusive-egghunter/)
* [top 10](https://hackmag.com/security/elevating-privileges-to-administrative-and-further/)

--- 

### Miscellaneous / Technology Grokking 
* [alternate data streams](https://www.curlybrace.com/words/2011/01/01/alternate-data-streams/)
* [overlayfs](http://blog.programster.org/overlayfs)
