---
layout: post
title: "Traceroute"
tags:
 -
---

This is not usually relevant to my life. I do consider DNS one of those Very Complicated things to Really Understand, that, if I Understood it, would make me a Real Programmer. And then I go back to building software that people use and like for a pretty nice salary, and feel wistful about DNS, because it is how things Actually Work and understanding that is important.

Today I was looking at a traceroute which I can't paste here but which had some similar elements to the below.

{% highlight bash %}
$ traceroute 8.8.8.8
traceroute to 8.8.8.8 (8.8.8.8), 64 hops max, 52 byte packets
 1  10.0.1.1 (10.0.1.1)  2.003 ms  1.053 ms  0.854 ms
 2  cpe-76-168-0-1.socal.res.rr.com (76.168.0.1)  20.463 ms  9.810 ms  9.786 ms
 3  tge0-9-0-18.tjngcaac02h.socal.rr.com (24.30.172.73)  23.464 ms  13.122 ms  13.365 ms
 4  agg29.lsaicaev02r.socal.rr.com (72.129.18.242)  16.018 ms  17.474 ms  15.773 ms
 5  agg26.tustcaft01r.socal.rr.com (72.129.17.2)  14.209 ms  15.202 ms  14.571 ms
 6  bu-ether16.tustca4200w-bcr00.tbone.rr.com (66.109.6.64)  21.002 ms  18.492 ms  16.012 ms
 7  0.ae2.pr1.lax10.tbone.rr.com (107.14.19.54)  20.037 ms  14.544 ms  15.910 ms
 8  216.156.65.225.ptr.us.xo.net (216.156.65.225)  14.254 ms  15.222 ms  29.202 ms
 9  216.156.65.102.ptr.us.xo.net (216.156.65.102)  16.884 ms  16.308 ms  16.573 ms
10  209.85.242.29 (209.85.242.29)  19.593 ms
    216.239.43.197 (216.239.43.197)  13.683 ms
    209.85.242.31 (209.85.242.31)  49.076 ms
11  google-public-dns-a.google.com (8.8.8.8)  17.706 ms  13.588 ms  17.048 ms
{% endhighlight %}

Things I learned:

[Time Warner Cable](http://www.timewarnercable.com/en/residential.html) is actually [Roadrunner](http://www.timewarnercable.com/en/residential.html) (see the *.rr.com) which buys from [XO Communications](https://en.wikipedia.org/wiki/XO_Communications)

!H means "Host, network or protocol unreachable" but also "In Cisco routers, the codes for a traceroute command reply are: ! - success, H - host unreachable" - [Dinger](http://www.networking-forum.com/viewtopic.php?t=10832)

"no reply" (between successful steps in a traceroute) - possibly means that the machine just [does not allow ping](https://superuser.com/questions/549617/no-reply-for-ping-command-what-does-this-mean)

PMTU "Path Maximum Transmission unit" i.e  "When a host needs to transmit data out an interface, it references the interface's Maximum Transmission Unit (MTU) to determine how much data it can put into each packet. Ethernet interfaces, for example, have a default MTU of 1500 bytes" - [packetlife](http://packetlife.net/blog/2008/aug/18/path-mtu-discovery/)

asymm "asymm means the the path to the hop and back have been different (asymmetric). This usually happens when there is some link in one direction jammed or the network architecture encourages different paths for the different directions. The number after asymm shows the grade of asymmetry (i.e. how many hops are different)." - [txwikinger](https://answers.launchpad.net/ubuntu/+source/gnome-nettool/+question/7682)

"***" in traceroute: "Three probes are sent at each TTL setting and a line is printed showing the TTL, address of the gateway and round trip time of each probe. If there is no response within the timeout interval, a "*" is printed for that probe." - [sachin-divekar](https://serverfault.com/questions/334029/what-does-mean-when-traceroute)

[Some really nice slides about traceroute](https://www.nanog.org/sites/default/files/tuesday_steenbergen_troublshootingtraceroute_62.49.pdf)