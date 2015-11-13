---
layout: post
title: "All The Things"
tags:
 - conf
---

Stuff I've gone to recently...

# [Swift Language User Group](http://www.meetup.com/swift-language/events/225938222/) (*walk)

Talk #1: Accessibility, Three Ways #2: The Astonishing Powers & Secrets of 3D Touch

- "and you can learn more on the internet if you don't like talking to humans!"
- code of conduct
- Talk 1: [josh adams, gpx location manager](https://github.com/vermont42/GpxLocationManager)
- [@sommer](https://twitter.com/sommer) accessibility
- dude lost control of his phone in a talk and it started talking
- [ios guided access](https://support.apple.com/en-us/HT202612)
- rxSwift, ReactiveCocoa
- FRP functional reactive programming
- accessibilityAnnouncer



# DevOpsDaysSV 2015 (*climb)

I volunteered a bit and worked most of Friday so I didn't get the full experience. But I really liked it. Would definitely attend again.

- food! Breakfast tacos were really great.
- ugh, strobe lights
- the subculture of hugops and tiaras- I am a fan.
- dev relatations, akamai
- synedra
- [princesspolymath.com](http://princesspolymath.com)
- "logs are simple in git"
- Hiring (from the job board): talkdesk, opsclarity, signalfx, aligntech, delphix, apple, puppet, graphip, symantec, concur, bunchball, ss8, salesforce, appformix, datadog, digitalocean, cisco, tubularlabs, marketo, oracle, usertesting.com, liatrio, sendgrid
- [@jasonhand](https://twitter.com/@jasonhand) "Flaming poo and the human condition"
- Cynefin framework
- "snowden's youtube video explains it a lot"
- "Best practices can only exist in in obvious systems"
- "emergent practices"
- "novel practice" - no relationship between cause and effect at a systems level.
- "There are no root causes. There can be a root cause. There are contributing factors."
- Gardner report: 334197
- weather and hardware - 20% of outages. The rest is people and processes.
- ETTO - efficiency to thouroughness tradeoff - cognitive bias
- Normalcy bias - wont happen to us, because it hasnt previously.
- Hindsight bias- thinking that we could have predicted this.
- Comfirmation bias- find evidence for anything!!
- OH: "I think root is a four letter word in the devops community" /cc @roguelynn
- At a postmortem, always say: "we are here to learn and improve"
- cool context graphic
- chatops is MEASURABLE!
- are your mean time to ack, mean time to repair - getting better over time?
- Devops enterprise summit - the speaker recommends it.
- comp history museum- "like walking through my childhood- kinda sad" why sad? Analyze this. Because it's over and you cant have it again, and cant even want to have it again- because our culture has some disparagement for people who live in the past, use only old toys... Because no one can use them again, because the the things are nice but they don't have those happy memories associated.
- amazing last slice
- 11th this year devops days, organized denver devopsdays
- "I am devops" shirts
- human ads - less worse than non-human ads.
- sparkly devops, hugops culture
- [chatops](http://cloudexpo2013east.sys-con.com/node/3486140)
- Oracle "big red"
- Stickers: unico puncto deficiendi (single point of failure)
- "We forget that people are critical-path resources too"
- "That little red box- that's me. Because I am on fire. I dye my hair blue so you can't tell."
- LPK - openssh - public keys https://code.google.com/p/openssh-lpk/
- "Since I can't go to the data center and hit them with a hammer, DBAN is the next best thing."
- "Tough shit if production blows up. I still want to go see him get married. Hire more people."
- "The cache is cleared, the stack is flushed. Everything you had in your head is gone." (interruptions)
- "You can be ARMED with this data."
- "I have given them the literal keys to the kingdom, and if they screw up, everything goes boom."
- If you do not have access to fix what you are on call for, you should not be on call for it. ? unless you are the layer that detects and ignores the flaky alerts...
- (my opinion) Getting paged should give you temporary access to the production system that you are on call for.


# [DataMining x Security @ Endgame](http://www.meetup.com/Data-Mining-for-Cyber-Security/events/225431456/) (*climb)

Notes:

- [Shape Security](https://shapesecurity.com/)
- user attribution based on bash history
- Speaker [@rseymour](https://twitter.com/@rseymour)
- bash history and process execution history - how do you collect these without people getting around that you are collecting these?
- [hackerone](https://hackerone.com)
- What are fig, pt ? (In the list of top commands on windows, but I don't recognize them)
- geek verbal negotiations- will this person hurt to talk to
- [bro the network security monitor](https://www.bro.org/)
- [http://bropages.org/](http://bropages.org/) Like man pages, but with examples - mostly abandoned
- [Fabernovel](http://www.fabernovel.com/) a company that has offices at the meetup location, Parisoma
- n-gram creation with clustering
- [Andrew Ng](http://www.andrewng.org/) "Every talk about data science must have a quote from him" (lol)
- Endgame is releasing some open source code soon (theoretically)
- Speaker 2: [@mrphilroth](https://twitter.com/@mrphilroth)
- underlying code reuse in malware and how to detect it despite obfuscation
- [binglide](https://github.com/wapiflapi/binglide) "Visual reverse engineering tool showing some of the current techniques." (used in the presentation)
- idapro, of course
- tool: [angr.io](http://angr.io/), ida, radare2, vivisect
- Speaker 3: [@tdhopper](https://twitter.com/@tdhopper)
- confusion matrices
- "It seems like a small difference, but it would matter a lot in production, where you're worrying about your false positive rate." YES
- (Obviously) When testing malware detection, split your data not randomly, but on time- because being able to detect software that you have the signatre for is not what you are trying to test.
- [minhash vs bitwise set hashing: jaccard similarity showdown](https://www.endgame.com/blog/minhash-vs-bitwise-set-hashing-jaccard-similarity-showdown)
- nearest neighbor search
- [mmds.org Mining Massive Datasets](http://mmds.org/) - best resource on Minhash!!
- audience heckling "you realize that this means that this data set has no information"
- tSNE plot
- talk 3: Andrew Morris [@Andrew___Morris](https://twitter.com/Andrew___Morris)
- tcpdump, off all firewalls. lolll
- SensorNet (by endgame) - targeted v non-targeted traffic- detects the 'random noise' and diffs against it.
- p0f - passive OS fingerprint - looks like Solaris, based on headers etc.
- "am I the only one seeing this traffic?" Is CVE-XXX in the wild?
- ThreshingFloor - customer sensor - opensourcing soon. HTTP honeypot- a web server that delivers responses based on what it asks for- wordpress page, lollll.
- custom log forwarder that sends from logfile to rabbit message queue!!
- leftover ip, ds - getting someone else's traffic
- success for impressing me with their company. maybe I just need to get out more/better but this is one of the better-content meetups I've been to
- "we know where all of shodan's servers are"
- [radio.endgame.com](http://radio.endgame.com) network scanner to play songs!! hack day projecttttt
- HOW do you screen out the traffic from stale DNS records / previous occupants of your IPs, from SensorNet? (I asked this question- the answer was ok) basically if the consumer is intended to be one of our boxes, swap out the box.
- Bad news bears lol
- snoop -a, listen to traffic
- approx 7F, 36M
