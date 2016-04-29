---
layout: post
title: "Cybersecurity and other nonsense"
tags:
 -
---

Here are my answers to some questions. I am not an expert, just an interested amateur. This is me rambling, not a guide to anything. Ask the internet. Don't access systems that you do not own or do not have permission to access. Always report the minimum exploit. Always report responsibly.

This is all in the context of thinking about [CS2050](http://cos.iit.edu/cs2050/)

## My self-introduction / how is cyber-security related to your daily job/life?

I am not a security expert. I haven't studied it formally. It has mattered to every team I've ever been on. I've worked as a software developer for only the most recent part of industry history. These people see the long view. I see the details, the code, the detail at the bottom of the pile. When someone has a deadline, my team and I are the people who actually meet or don't meet the deadline. I really like being at that level. Security is one of the ever-present "cross-cutting concerns" just like performance and uptime. I'm interested in it as a field because it is hugely important, and I like important things.

## What is cybersecurity?

It's a funny word, and a vague one. "Cyber." It is the practice of keeping digital/electronic assets only accessed by who you want them to be accessed by. Otherwise known as essential to the world as we know it. Sometimes called "being on the blue team".

## How do you learn more about it?

Check out the OWASP guides, the CISSP study guides, the [Matasano](http://cryptopals.com/) challenges if you're interested in the crypto side, 2600 magazine, hackerOne for current competitions, system administrator educational resources for practical advice, and conferences for actually meeting people and immersing your brain in the whole crazy range of the field.

## How do you get a career in it?

I don't have personal experience in this. Like many things, you learn enough that someone gives you responsibility, and then you learn more. What part of the field do you want a career in? Sanctioned digging into other people's systems? Or blue team defense against malicious actors? Or big company asset protection- having literally the keys to the kingdom, and the responsibilities that go along with that? Most people want the first one. Do you want to do independent research, trying to live on bug bounty rewards, or internal work for a consulting security company, seeing the most hilariously, frighteningly insecure systems and never ever being able to talk about it, just slowly losing your faith in anything ever? Or social engineering, which is part of any *practical* security red or blue program? Or academic research, probably in cryptography, which is very very important and is mostly made of really cool math?

## What is red team / blue team?

[Wikipedia](https://en.wikipedia.org/wiki/Red_team) and [Red-blue exercise planning.](http://www.csoonline.com/article/2122440/emergency-preparedness/red-team-versus-blue-team--how-to-run-an-effective-simulation.html) Red- attackers, either in real life or for practice. Blue- defenders. Red always has the advantage, because they know where they are aiming, and blue just has to defend everything. There is always a huge surface area to defend and you have to think about your threat model and choose how to design your defensive strategy. Always defend in depth- multiple layers of defense. It's one of the only areas of software engineering where DRY is not a good idea.

## What is surface/attack area?

Also known as [attack surface](https://en.wikipedia.org/wiki/Attack_surface) and [OWASP has a good page](https://www.owasp.org/index.php/Attack_Surface_Analysis_Cheat_Sheet). Surface area is everything that an attacker can get at from the outside of your organization. IIT's surface area is large- their wifi networks, their ethernet ports, the computer lab, the email system, the website, and every integration point with any outside system. By this definition, every field that someone can type into on a website that you host or control is an attack point, for example. Every open port on your server is an attack point. Every API endpoint is an attack point.

## How do you report a vulnerability?

Most companies have a security@ email address. Most companies have a "Security" link at the bottom of their webpage. If you can't find anything, email their help email address and ask for an escalation. If you really can't find anything, look up their employees, find someone who looks like developer, and try to contact them. Ask on IRC if you can find someone or a group to ask. If you really really can't find anything, email one of the security field's big names, probably [Schneider](https://www.schneier.com/), the Electronic Frontier Foundation [(EFF)](https://www.eff.org/issues/coders/vulnerability-reporting-faq) or [SANS](https://www.sans.org/) and ask for help reporting. Never disclose the exploit to anyone except the actual company, especially not in a forum. Never post the data that you have gotten from an exploit. In fact, never save the data that you get from an exploit, other than the minimum needed to prove/verify.

## As a student, how do I have better cybersecurity hygiene?

What is your threat model? If it's a government, what have you been doing? Don't tell me. I hope that you know more than I do about this stuff. If your threat model is your parents- whether they think that they're benign or not-, or other students, or protecting your wordpress server from random people on the internet? Basic basic basic stuff that you know like you know your toes- Never post your address or phone number anywhere. Use a different password for every website that has your credit card information in it. Use a unique password for your email. I recommend using a password manager like [1Password](https://agilebits.com/) or LastPass. Review your apps list on everything that does app integrations, especially facebook and twitter. Use two-factor authentication on everything, including github. You can get a [yubikey](https://www.yubico.com) and/or [GPG](https://www.gnupg.org/) sign your emails; for most of you, that would be a cool technical brag but not a necessity, unless you are going to be a journalist about controversial topics. Use a password on your phone; swipe is too easy to break. Fingerprint is ok unless you have a threat model that includes courts, because you aren't allowed to not disclose a fingerprint.

## How is IIT's security?

I don't know. Ask TechOps. IIT has a huge attack area- every ethernet port in the dorms and ethernet is usually more trusted than wifi unless you fix that in your network configurations, the wifi networks on every campus, all web assets, blackboard, professors' old websites, myIIT. Their threat model is huge- students who want to get in, students who want better grades, anyone who is interested in any private files that a professor might have in the network, and loads of other things that I don't know about. How is their security? Well, right now it's good enough that there are no public breaches. Please try to not change that. Always report vulnerabilities responsibly. Some companies still punish responsible vulnerability reporters (via litigation or other penalties), and that is a terrible practice that not only hurts the company's reputation and defensibility, but poisons the whole ecosystem. Never dig deeper than you have to in order to get a proof of concept. Document everything. Don't be a [script kiddie](https://en.wikipedia.org/wiki/Script_kiddie) (a low-skilled individual who behaves unprofessionally and then brags about it). If you want to go into the industry, trustworthiness and etiquette are super important. Air gaps for important systems are super important. If you've read the latest research out of MIT, that's not enough; there are [side channel attacks](https://en.wikipedia.org/wiki/Side-channel_attack) for [screen flicker (badBIOS)](https://www.schneier.com/blog/archives/2013/11/badbios.html) and [fan noise](https://www.tau.ac.il/~tromer/acoustic/).

## What is responsible vulnerability reporting?

HackerOne has some [good guidelines.](https://hackerone.com/disclosure-guidelines) Basically: Always report directly to the company/project that has the bug. Never keep sell any data that you get from a vulnerability. Never share how to replicate the issue with anyone other than the product team until there is a release that has fixed the issue and an announcement has been made that everyone should upgrade to the new release. The importance of sticking to this etiquette scales with the severity of the vulnerability that you find. [Impero reporting guidelines](https://www.imperosoftware.com/about/reporting-vulnerabilities/)

## What does "poisons the whole ecosystem" mean?

Some companies punish responsible vulnerability reporters (via litigation or other penalties), and that is a terrible practice that not only hurts the company's reputation and defensibility, but poisons the whole ecosystem. When a security researcher does not report a vulnerability (usually because they are scared of retaliation and therefore feel that it will not be worth the trouble to them), this increases the chances that some less ethical researcher will discover the vulnerability and use it for ill to take advantage of the users of the vulnerable system. Companies which penalize the reporting of security issues are actively disintegrating the system which helps all systems become more secure. This really annoys me.

## What is hacktivism?

It is controversial, for one thing. The practice of causing change, usually politically, using data or attacks obtained via system vulnerabilities. For instance, if government or company X announces a controversial law or business deal, and then someone finds a way to unauthorizedly change the content on that organization's website, and includes a paragraph mentioning that unauthorized change was motivated by dislike of the government's action- or brags later about the same- then I consider it accurate to describe it as "hacktivism". This is rarely a good idea, just like breaking and entering is rarely a good idea- it's illegal and the victims usually get really mad. It can have a huge reach, of course.

## How do you think like a pen tester?

What is valuable? What do you have to protect? A penetration tester penetrates defenses, usually of a network or other organization. A friend of mine had their linkedin account broken into and all of the skills changed to "sex." Some people get email notifications for changes in their network, and in this person's case their parent got an email from linkedin that their child was skilled at sex. So even if that's not a disaster, it's still an annoyance. With access to a linkedin account, one could delete all the recommendations, message and insult all the coworkers and bosses, change the photo to something unprofessional, just generally make a mess. This would be a bigger deal if you were in the middle of a job search. Thinking like a pen tester required that you think the unthinkable thoughts- the ones that some people are too polite to think. Every thought is a "but I wouldn't really do that" thought, but you need to think about what could be done with the data that you are trying to get, in order to know what data and access you are trying to get. With access to someone's IIT account, maybe you could drop all their classes, email all their professors rude things, delete all their google docs. Don't do that. Most of it is recoverable, with some cooperation from the university and a lot of apologizing. Think of the things that are beyond the pale, and how someone would do them. Then defend those things.

## How can I hack someone?

One, I'm not going to answer that. Two, I recommend discussing your differences with them civilly and/or try third party arbitration. Three, what are you going for? If you just want to annoy them, you could try to log in as them five times to a service that locks you out and sends a warning email after too many failed attempts.


## How do man in the middle attacks work?

Ask the internet. If you connect to a malicious wifi network that captures all your traffic and forwards it to someone who wants to do bad things with it- well, they can see what sites you are visiting, what you type into fields on those sites, even login fields, unless the page is served over HTTPS and logins are submitted via ssl. Many hotel wifi networks do this. I would be unsurprised if some corporate and university networks do this, for theoretically benign reasons. To avoid this, you can forward all your traffic through a VPN. You can run your own, or pay for one for about $6 per month. Absolutely every page should use ssl for login. With the rise of [LetsEncrypt](https://letsencrypt.org/) free SSL/TLS certs, more and more everything should be being served over https. Hopefully the amount of damage doable via MiTM attacks is declining.

## How do I get a career in (government) cybersecurity? (Part 2)

Like anything else that you really care about- do your research. Keep up with security news- maybe plug everything into an RSS reader so you can see it all in one place. Look up all available government security jobs. Look up the things that they want you to know and figure out what they are. Write blogs and code snippets and put them on your github- a portfolio of your thinking and work. Meet people- go to meetups and conferences. Find industry professionals and professors and ask them respectfully for their time- listen to them and ask them questions, try to learn what they know. Conferences are by far the best way to immerse your brain in the mad glory that is the constantly-changing field of security. They are also by far the best place to find jobs and internships. If you have the time and brainspace, run a local meetup group, invite speakers who know more than you do and listen to them.

A lot of software developers use twitter to talk about code stuff and general industry stuff. When presenting, a huge number of industry presenters use their twitter handle as their "contact me." Think about getting a twitter account.

## Why is cybersecurity important?

All of the things that use the internet or other electronic transmitting- email, banks, phone calls and sms, airline itineraries and scheduling, news organizations- all of these rely heavily on the internet and need to keep their data secure. Discussions of why security is important lead quickly into discussions of why some data needs to be private, for companies, people, and governments.


### Some links on the importance of security:

- [http://www.whitecase.com/publications/insight/cyber-risk-why-cyber-security-important](http://www.whitecase.com/publications/insight/cyber-risk-why-cyber-security-important)
- [http://www.forbes.com/sites/larrymagid/2014/10/01/why-cyber-security-matters-to-everyone/#2e4858de1fd0](http://www.forbes.com/sites/larrymagid/2014/10/01/why-cyber-security-matters-to-everyone/#2e4858de1fd0)
- [http://investingnews.com/daily/tech-investing/cybersecurity-investing/why-is-cyber-security-important/](http://investingnews.com/daily/tech-investing/cybersecurity-investing/why-is-cyber-security-important/)
- [http://investingnews.com/daily/tech-investing/cybersecurity-investing/why-is-cyber-security-important/](http://investingnews.com/daily/tech-investing/cybersecurity-investing/why-is-cyber-security-important/)
- [http://www.pwc.com/us/en/view/issue-15/cybersecurity-business-priority.html](http://www.pwc.com/us/en/view/issue-15/cybersecurity-business-priority.html)


## What is the "Internet of things" and why is it a security nightmare?

It's the thing where your thermostat can be accessed via your phone, and your fridge knows or can guess what food is inside it and has an API that you can use to talk to it, or maybe it just texts you. Smart light bulbs. IoT is scary because it dramatically increases your attack surface, and brings the attack surface further into your physical home. An attacker who can see that your thermostat is off and your lightbulbs are off knows that it's a good time to come take your stuff, since you're not at home. An attacker can nuisance-attack you by changing the temperature and lights in your house, making all your food spoil, and driving up your energy bill- or just making you think that you've gone insane. Baby monitors that strangers on the internet can break into and watch and talk to your child are not just possible, [it has happened](http://www.buzzfeed.com/craigsilverman/creeps-hack-baby-monitors-and-say-terrifying-thing).

## What was the Apple vs FBI thing about?

[Wikipedia](https://en.wikipedia.org/wiki/FBI%E2%80%93Apple_encryption_dispute)

The FBI wanted Apple to break into an iphone for them, which would let them get into all iphones. Apple refused- which I agree with- because that is a huge amount of power that literally no one should have. The FBI found an alternate solution, but they want all the keys- which I can kinda sympathize with, even though I think it's a terrible idea because the thing about keys is that they can be lost, and these particular keys are basically impossible to change the locks for.

## What are companies doing to promote security and best practices?

"Hacktober" is really cool- basically a company hacks it's employees, then when they fall for it, redirects them to an internal site with educational resources. This is much more effective than making everyone sit through a training course. (It is an addition to the training, not a replacement!) Stuff like leaving flash drives in the parking lot- you plug it into your computer to see what it is and how to get it back to the owner, and then the software on it compromises the machine that it is plugged into.

[Facebook hacktober](https://www.facebook.com/notes/facebook-engineering/happy-hacktober/10151170449088920/) [Mashable article](http://mashable.com/2012/11/29/facebook-hacktober/) [NS/Sophos article](https://nakedsecurity.sophos.com/2012/11/30/facebook-hacks-its-workers-into-hacktober-smithereens/)

Of course companies have "security training" courses, internal security teams, lunch-and-learns, etc. The short answer to "what do companies do" in my opinion is: mostly not enough to not get hacked, but they don't know that until too late.


## What is PCI compliance, and how is it different from HIPAA?

PCI is Payment Card Industry. Here are some notes. [http://www.onlinetech.com/resources/references/what-is-pci-compliance](http://www.onlinetech.com/resources/references/what-is-pci-compliance)

HIPAA is The Health Insurance Portability and Accountability Act of 1996 and it is about how to protect patient medical data. Both of these things have infrastructure and process requires.


## How does detection of hacking work?

It depends. For many corporate networks, the company can track what software is installed on a company device, and if new software, especially suspicious software, appears, then someone can be alerted. As a person, check that you haven't posted anything weird to facebook, check that your bank account has no weird charges. This is a topic that deserves its own conference. Google "network intrusion detection."

This section needs a lot more work. I know fairly little about this- only hand-wave-y stuff.


## What is "spoofing"?

Pretending to be something that you are not (a cell phone tower, the gmail login page). Email spoofing is pretending to send email from an address that you do not control. Gmail tries to disallow this; many other clients do not.


## How does anyone get through a firewall into a network?

Many firewalls are mis-configured in common ways. Always run a [scanning tool](http://brakemanscanner.org/) on your own code [and firewalls](http://lcamtuf.coredump.cx/afl/) to find and fix simple mistakes before anyone else does. Always change default passwords, or someone will look them up and use them. Much more rare is an actual software fault that can be taken advantage of.

## Why isn't the government more up to date?

They have a huge surface area, with many authorities, none of which have final say in many cases. Communication in such a huge organization takes a lot of overhead and propagation time. Best practices change over time. There are a lot of regulations, many of which are hard to understand and adhere to, and some of which are out of date. Offering a service to the government, even from inside the government, is difficult. [18F (that's an address) Digital Services Delivery](https://18f.gsa.gov/) is doing great at this.

## What is a data breach and why do they happen?

When some data that was supposed to not be public, is made public, it is a data breach. Usually this happens when someone breaks into a company's data store and then posts it online- either for revenge, journalism, or profit (selling it to people who can use the data for monetary gain)

## What about that cryptolocker thing?

A hospital was recently held "hostage" to unlock their data. [News1](http://www.wired.com/2016/02/hack-brief-hackers-are-holding-an-la-hospitals-computers-hostage/) [News2](http://www.latimes.com/business/technology/la-me-ln-hollywood-hospital-bitcoin-20160217-story.html)

That's where files are encrypted on disk; the user values the files and pays to have them unlocked. This is a repeatable exploit until the system is patched, but it is harder to get the victim to pay the second time. Always back up your data in addition to securing your systems!


## What steps would you suggest a security noob take to improve on a pretty much nonexistent security strategy?

Write down your threat model. Write down what your valuable data is and what could go wrong for your users if you have a data breach. Write down what havoc an attacker could wreak if they accessed your systems. Show it to your team and brainstorm. Read the OWASP guides and run the basic security tools (scanners, fuzzers) against your networks and websites. If you're serious about this- if you have a lot to lose- hire a reputable company or researcher to look at your systems.

Consider getting ["cyberattack" insurance.](http://www.nytimes.com/2014/06/09/business/cyberattack-insurance-a-challenge-for-business.html)


## IIT alumni are encouraged to share with us one (most) memorable experience at IIT

Not really any security-related events. Some really memorable classes. Being a TA was a great experience because you get to see a little more of what's behind the educational curtain. Maybe I was naive but up until I was a TA, I didn't really think about education as an endeavor, just as a thing that was happening to me, or that I was trying to get.

## Give some real cyber-incident that you have experienced in your work?

Well, some of those aren't great for speaking about in public. Here's a funny one that turned out ok. Just after a certain person had been let go from a company where I worked, all of the names of our employees in Zendesk (our support and reporting system) began changing to weird nicknames, and every time we fixed them, they would just change back. So we suspected the person. But it turned out that we had just released to production an application inline integration with Zendesk that over-wrote the names every time someone made a note or replied to a comment. But for a day or so in there we frantically changed a lot of passwords, and we did some really intense debugging and some really thorough searching through the application logs.

## How can IIT be better at cybersecurity training? (teaching, research areas, outreach, etc)

That's a great question. I think that this panel is a big start. I think that colloquiums and research paper reading groups are pretty great for academic advancement in the field. Definitely go to meetups and conferences if you can. Read the literature! Do some googling. I think that the campus ACM could make a big contribution here with student-run sessions, but the problem here is the "don't know what you don't know" quadrant of knowledge. Someone needs to know the name of the thing that they don't know, in order to get started. In order to learn what the things are that you don't know, meetups and conferences are super great.

## Advice to current IIT students

### What are the hot/cool areas in cyber-security today?

Everything. Literally everything. Internet of things is a huge steaming pile of insecurity, so that's an easy place to get some big wins. Mobile computing has some big opportunities to be very creepy and invasive and therefore it's a good place to put some security attention.

### What are the most needed skills in cyber-security job market?

[Systems thinking](https://en.wikipedia.org/wiki/Systems_thinking), good teamwork, clear communication, and diligence. Like everything else, basically.


## Are passwords obsolete?

Probably, but I don't know if there's widespread agreement on what to use instead.

## Why does credit card information get stolen so often?

Because it's a high-value target and therefore a lot of people aim at it. Also card skimmers and the USA's deeply incomplete implementation of chip-and-pin cards. [source1](http://www.usatoday.com/story/money/personalfinance/2015/10/01/us-shifts-credit-cards-chip-signature-still-do/73145306/) [source2](https://www.quora.com/Why-is-the-USA-adopting-chip-signature-and-not-chip-pin) [source3](http://www.wired.com/2015/09/big-security-fix-credit-cards-wont-stop-fraud/)


## Are there any security startups?

Absolutely. Some of them are great. Some of them are absurdly terrible. There have been some really naive Kickstarters. Be skeptical. Always always always be skeptical. If you can't think of hard questions to ask, do more research and try harder.

TODO: more links

## Are we all doomed?

We are currently experiencing doom. The doom will increase.

## IIT specific resources

- [C2Safe](http://appliedtech.iit.edu/c2safe)
- [Forensecure](https://appliedtech.iit.edu/forensecure)
- [CS2050](http://cos.iit.edu/cs2050/)


## Conferences

- [List of security conferences](https://www.concise-courses.com/security/conferences-of-2016/)
- [Other list](https://digitalguardian.com/blog/top-50-must-attend-information-security-conferences)
- Defcon
- HOPE
- RedHat
- [ShmooCon](http://shmoocon.org/)
- TorCon
- CanSecWest
- [RSA Conference](https://www.rsaconference.com/)
- [Chaos communication Congress](https://www.ccc.de/en/)
- BSides
- [BurbSec](http://burbsec.com/)
- ChiSec


## Conference talks

- [Security for Humans: Privacy and Coercion Resistant Design, Morgan Marquis-Boire](https://www.youtube.com/watch?v=k4ypqzOShZs)
- [Security is hard, André Arko](http://confreaks.tv/videos/rdrc2015-security-is-hard-but-we-can-t-go-shopping)
- [Security is broken, Eileen Uchitelle](http://confreaks.tv/videos/mwrc2016-security-is-broken-understanding-common-vulnerabilities)

## References

- [“Dirty Tricks” for Seminars and Talks](http://dailynous.com/2015/06/19/dirty-tricks-for-seminars-and-talks-guest-post-by-josh-parsons/)
- [https://www.whitehouse.gov/sites/default/files/omb/egov/digital-government/digital-government.html](https://www.whitehouse.gov/sites/default/files/omb/egov/digital-government/digital-government.html)
- [http://www.engadget.com/2016/04/22/how-60-minutes-played-telephone-with-public-hacking-hysteria/](http://www.engadget.com/2016/04/22/how-60-minutes-played-telephone-with-public-hacking-hysteria/) and the actual [60 Minutes episode](http://www.cbsnews.com/news/60-minutes-hacking-your-phone/)
- [Five things that should scare you](https://coderanger.net/five-fears/)
- [https://www.quora.com/What-are-the-top-cybersecurity-challenges](https://www.quora.com/What-are-the-top-cybersecurity-challenges)
- [Companies](https://www.quora.com/What-are-the-top-cybersecurity-startups-in-America)
- Really great and thought-through defensive programming security design: [Callisto](https://www.projectcallisto.org/)
- Other recent-ish news: [Ukraine power hack](http://www.wired.com/2016/03/inside-cunning-unprecedented-hack-ukraines-power-grid/)
- Ridiculous long amazing paper about linux container hardening [https://www.nccgroup.trust/us/about-us/newsroom-and-events/blog/2016/april/understanding-and-hardening-linux-containers/](https://www.nccgroup.trust/us/about-us/newsroom-and-events/blog/2016/april/understanding-and-hardening-linux-containers/)
- [Key findings from the 2015 US State of Cybercrime Survey](https://www.pwc.com/cybersecurity)
- [Verizon's 2016 Data Breach Investigations Report](https://jacobian.org/writing/2016-dbir-highlights/)

## Other stuff to talk about

- What does "hack" mean? (old definition vs modern media definition)
- DDoS
- How much can/should you defend systems against employees?
- Minimum permissions systems
- Google's awesome device indexing (link)
- Talk more about ethics
- Discussion of current crypto libraries and auth, password hashing

------


Typofixes, questions, factual corrections, and feedback are welcome: please file an issue on github at [https://github.com/compwron/compwron.github.io/issues](https://github.com/compwron/compwron.github.io/issues) or contact me via email (compiledwrong at gmail)
