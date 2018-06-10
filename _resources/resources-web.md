---
title: web
layout: page
---
# Resources for Interacting with a Web Server

## Initiate
* enumerate with 
    * nikto,
    * dirb,
    * gobuster,
    * [parsero](https://tools.kali.org/information-gathering/parsero) # robots.txt discovery
    * wfuzz, etc
* Common URI? -> sqlmap
* Read, look for hints, passwords
* Check source code for versions, commented out goodies
    * `<!--  <a href="gadmin">Admin</a>&nbsp;&nbsp; -->`
* web stack discovery
    * [blindelephant](https://tools.kali.org/web-applications/blindelephant)
    * [whatweb](http://www.morningstarsecurity.com/research/whatweb)

## General Resources
* [payloadallthethings](https://github.com/swisskyrepo/PayloadsAllTheThings)
* [pentest and webapp cheat sheet](https://doxsec.wordpress.com/2017/07/21/penetration-testing-and-webapp-cheat-sheets/)

## Local File Inclusion - LFI
* [php filter local file inclusion - lfi](https://www.idontplaydarts.com/2011/02/using-php-filter-for-local-file-inclusion/)
    * `http://192.168.178.134/?page=php://filter/convert.base64-encode/resource=config` (nikto says config.php exists but downloaded is 0 bytes)
    * `echo
        PD9waHANCiRzZXJ2ZXIJICA9ICJsb2NhbGhvc3QiOw0KJHVzZXJuYW1lID0gInJvb3QiOw0KJHBhc3N3b3JkID0gIkg0dSVRSl9IOTkiOw0KJGRhdGFiYXNlID0gIlVzZXJzIjsNCj8+
        | base64 --decode`
* [lfi minilist](https://penetrate.io/2014/09/25/local-file-inclusion-mini-list/)
* https://xapax.gitbooks.io/security/content/local_file_inclusion.html
* [aptive ctf lfi](https://www.aptive.co.uk/blog/local-file-inclusion-lfi-testing/)
    * https://www.exploit-db.com/docs/english/40992-web-app-penetration-testing---local-file-inclusion-(lfi).pdf
* [payloadsAllTheThigns](https://github.com/swisskyrepo/PayloadsAllTheThings/tree/master/File%20Inclusion%20-%20Path%20Traversal)
* [lfi cheat sheet - highoncoffee](https://highon.coffee/blog/lfi-cheat-sheet/)

### windows lfi
* [path traversal cheat
    sheet](https://www.gracefulsecurity.com/path-traversal-cheat-sheet-windows/_

## Remote File Inclusion
* [PHP Remote File Inclusion command shell using
    data://](https://www.idontplaydarts.com/2011/03/php-remote-file-inclusion-command-shell-using-data-stream/)

## Command Injection
* http://thehackpot.blogspot.com/2014/05/blind-os-command-injection-attacks.html

## Simple Server (Python)
* python -m SimpleHTTPServer 8080: a one-liner I still use on a daily basis.  A lot easier and quicker than turning Apache on and off, in my humble opinion.  Also nice because when you run it in your terminal, it prints all the incoming requests.  So not only is it handy for hosting your malicious script or PHP, it’s also handy for quickly fuzzing for RFI on a web app.  In fact, I got my foothold on one of the target boxes specifically because I was using this one-liner and it allowed me to see the incoming RFI (and troubleshoot that an additional file extension was getting tagged on and keeping my script from running).  I usually use “8080” for the port, but you can change it at the end, in the case where it’s conflicting with another app or you’re trying to get around firewall restrictions.  On every Linux and Mac I use, I keep this in my .bashrc with the alias “pythonwebserver”.  Be aware that it’s “python -m http.server 8000” on Python 3, in case your environment uses it instead of the more common Python 2.x versions.
    * [source](https://ch1kpee.com/2016/11/04/oscp-update/)

## Wordpress
* [admin reverse
    shell](http://www.r00tsec.com/2015/08/howto-create-backdoor-in-wordpress.html)
* [admin reverse shell 2](https://r0rshark.github.io/2015/07/30/google/)

## browser
1. cookies manager +
2. firebug - web dev evolved
3. foxyproxy basic
4. hackbar - toolbar help you find SQLi
5. httprequester - tool for easy HTTP requests
6. https everywhere
7. live http headers
8. nightly tester tools
9. noscript
10. privacy badger
11. tamper data - view and modify http/s headers, etc
12. uBlock Origin

## javascript unpack
* http://jsunpack.jeek.org/

## SSRF
* https://www.acunetix.com/blog/articles/server-side-request-forgery-vulnerability/
* https://medium.com/bugbountywriteup/the-design-and-implementation-of-ssrf-attack-framework-550e9fda16ea

## PHP magic hashes / type juggling / weak type
* https://www.whitehatsec.com/blog/magic-hashes/
* http://turbochaos.blogspot.com/2013/08/exploiting-exotic-bugs-php-type-juggling.html
* https://pen-testing.sans.org/blog/2014/12/18/php-weak-typing-woes-with-some-pontification-about-code-and-pen-testing
