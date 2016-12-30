---
layout: post
title: "Unexpected Restarts"
tags:
 -
---

### Problem:

Sometimes, for reasons I don't understand, my computer restarts while it is asleep. Frustratingly, a 60-second countdown to this tends to happen just after I open the lid, so if I don't log in quickly, it restarts. This seems... odd. This has been happening intermittantly (sometimes daily, sometimes not for weeks) since June 2016.

### Investigation:

I am pretty sure that this is not my computer trying to update itself, since I've applied all my patches and updates from the App Store.

I am on OSX 10.11.6

I checked: "System Preferences > Users & Groups > Login Items" and inspected what was there and removed literally everything, in case one of them is causing it. I did add Terminal.


When I go to: "Apple+Option > System Information > Software > Applications > sort by Obtained From
Audit" I see many things... I was briefly disturbed by one which turned out to be my office printer.


I removed Cisco apps from /Applications/Cisco because I no longer need them

Ideas: boot in verbose log, then check the logs

removed old logs from /var/log and then read the remainders


From my system.log:

Dec 29 19:57:55 administrator com.apple.kextd[48]: ERROR: invalid signature for com.cisco.kext.acsock, will not load
Dec 29 19:57:55 administrator acwebsecagent[23820]: OpenPlugin returned kdf error: 1

I have no idea whether this might be related.

Also tried:

- Fixing everything that "brew doctor" says
- upgrading xcode to the latest version


### References:

[OSX Daily](http://osxdaily.com/2009/09/22/check-your-macs-uptime-and-reboot-history/)
[Apple StackExchange](https://apple.stackexchange.com/questions/48226/how-do-i-find-the-log-for-the-shutdown-process)

