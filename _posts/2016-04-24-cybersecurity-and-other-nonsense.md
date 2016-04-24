---
layout: post
title: "Cybersecurity and other nonsense"
tags:
 -
---

Here are my answers to some questions. I am not an expert, just an interested amateur. Ask the internet. Don't access systems that you do not own or do not have permission to access. Always report the minimum exploit. Always report responsibly.

## What is cybersecurity?

It's a funny word, and a vague one. "Cyber." It is the practice of keeping digital/electronic assets only accessed by who you want them to be accessed by. Otherwise known as essential to the world as we know it. Sometimes called "being on the blue team".

## How do you learn more about it?

Check out the OWASP guides, the CISSP study guides, the Matsano challenges if you're interested in the crypto side, 2600 magazine, hackerOne for current competitions, system administrator educational resources for practical advice, and conferences for actually meeting people and immersing your brain in the whole crazy range of the field.

## How do you get a career in it?

I don't have personal experience in this. Like many things, you learn enough that someone gives you responsibility, and then you learn more. What part of the field do you want a career in Sanctioned digging into other people's systems? Or blue team defense against malicious actors? Or big company asset protection- having literally the keys to the kingdom, and the responsibilities that go along with that? Most people want the first one. do you want to do independent research, trying to live on bug bounty rewards, or internal work for a consulting security company, seeing the most hilariously, frighteningly insecure systems and never ever being able to talk about it, just slowly losing your faith in anything ever? Or social engineering, which is part of any *practical* security red or blue program? Or academic research, probably in cryptography, which is very very important and is mostly made of really cool math?

## What is red team blue team?

[Wikipedia](https://en.wikipedia.org/wiki/Red_team) and [Red-blue exercise planning](http://www.csoonline.com/article/2122440/emergency-preparedness/red-team-versus-blue-team--how-to-run-an-effective-simulation.html) Red- attackers, either in real life or for practice. Blue- defenders. Red always has the advantage, because they know where they are aiming, and blue just has to defend everything. There is always a huge surface area to defend and you have to think about hour threat model and choose how do design your defensive strategy. Always defend in depth- multiple layers of defense. It's one of the only areas of software engineering where DRY is not a good idea.

## Surface area?

Also known as [attack surface](https://en.wikipedia.org/wiki/Attack_surface) and [OWASP has a good page](https://www.owasp.org/index.php/Attack_Surface_Analysis_Cheat_Sheet). Surface area is everything that an attacker can get at from the outside of your organization. IIT's surface area is large- their wifi networks, their ethernet ports, the computer lab, the email system, the website, and every integration point with any outside system. Every field that someone can type into on a website that you host or control is an attack point, for example.

## How do you report a vulnerability?

Most companies have a secutiy@ email address. Most companies have a "Security" link at the bottom of their webpage. If you can't find anything, email their help email address and ask for an escalation. If you really can't find anything, look up their employees, find someone who looks like developer, and try to contact them. Ask on IRC if you can find someone or a group to ask. If you really really can't find anything, email one of the security field's big names and ask for help reporting. Never disclose the exploit to anyone except the actual company, especially not in a forum. Never post the data that you have gotten from an exploit. In fact, never save the data that you get from an exploit, other than the minimum needed to prove/verify.

## As a student, ho do I have better cybersecurity hygene?

What is your threat model? It it's a government, what have you been doing? Don't tell me. I hope that you know more than I do about this stuff. If your threat model is your parents- whether they think that they're benign or not-, or other students, or protecting your wordpress server from random people on the internet? Basic basic basic stuff that you know like you know your toes- Never post your address or phone number anywhere. Use a different password for every website that has your credit card information in it. Use a unique password for your email. I recommend using a password manager like 1Pass or LastPass. Review your apps list on everything that does app intrgrations, especially facebook and twitter. Use two factor auth on everything, including github. You can get a yubikey and/or GPG sign your emails; for most of you, that would be a cool technical brag but not a necessity, unless you are going to be a journalist about controversial topics. Use a password on your phone; swipe is too easy to break. Fingerprint is ok unless you have a threat model that includes people who will pick your fingerprints off the desk or the DMV database.

## How is IIT's security?

I don't know. Ask TechOps. IIT has a huge attack area- every ethernet port in the dorms and ethernet is usually more trusted than wifi unless you fix that in your network configurations, the wifi networks on every campus, all web assets, blackboard, professors' old websites, myIIT. Their threat model is huge- students who want to get in, students who want better grades, anyone who is interested in any provate files that a professor might have in the network, and loads of other things that I don't know about. How is their security? Well, right now it's good enough that there are no public breaches. Please try to not change that. Always report vulnerabilities responsubly. Some companies still pubish responsible vulberability reporting, and that is a terrible practice that not only hurts the company's reputation and defensibility, but poisons the whole ecosystem. Never dig dieeper than you have to in order to get a proof of concept. Document everything. Don't be a script kiddie. If you want to go into the industry, trustworthiness and ettiquite are super important. Air gaps for important systems are super important. If you've read the latest research out of MIT, that's not enough; there are side channel attacks for screen flicker and fan noise.

## How do you think like a pen tester?

What is valuable? What do you have to protect? A penetration tester penetrates defenses, usually of a network or other organization. A friend of mine had their linkedin account broken into and all of the skills changed to "sex" some people get email notifications for changes in their network, and in this person's case their parent got an email from linkedin that their child was skilled at sex. So even if that's not a disaster, it's still an annoyance. With access to a linkedin account, one could delete all the recommendations, message and insult all the coworkers and bosses, change the photo to something unprofessional, just generally make a mess. This would be a bigger deal if you were in the middle of a job search. Thiking like a pen tester required that you think the unthinkable thoughts- the ones that some people are too polite to think. Every thought is a "but I wouldn't really do that" thought, but you need to think about what could be done with the data that you are trying to get, in order to know what data and access you are trying to get. With access to someone's IIT account, maybe you could drop all their classes, email all their professors rude things, delete all their google docs. Don't do that. Most of it is recoverable, with some cooperation from the university and a lot of apologizing. Think of the things that are beyond the pale, and how someone would do them. Then defend those things.

## How can I hack someone?

One, I'm not going to answer that. Two, I recommend discussing your differences with them civilly and/or try third party arbitration. Three, what are you going for? If you just want to annoy them, you could try to log in as them five times to a service that locks you out and sends a warning email after too many failed attempts.

## How do man in the middle attacks work?

Ask the internet. If you connect to a malicious wifi network that captures all your traffic and fowards it to someone who wants to do bad things with it- well, they can see what sites you are visiting, what you type into fields on those sites, even login fields, unless the page is served over https and logins are submitted via ssl. many hotel wifi networks do this. I would be unsurprised if some corporate and university networks do this, for theoretically beign reasons. To avoid this, you can forward all your traffic through a VPN. You can run your own, or pay for one for about $6 per month.

## What is PCI compliance, and how is it different from HIPAA?

## IIT specific resources

- [C2Safe](http://appliedtech.iit.edu/c2safe)
- [Forensecure](https://appliedtech.iit.edu/forensecure)


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


## Conference talks

- [Security for Humans: Privacy and Coercion Resistant Design, Morgan Marquis-Boire](https://www.youtube.com/watch?v=k4ypqzOShZs)
- [Security is hard, André Arko](http://confreaks.tv/videos/rdrc2015-security-is-hard-but-we-can-t-go-shopping)
- [Security is broken, Eileen Uchitelle](http://confreaks.tv/videos/mwrc2016-security-is-broken-understanding-common-vulnerabilities)

## References

- [http://dailynous.com/2015/06/19/dirty-tricks-for-seminars-and-talks-guest-post-by-josh-parsons/](“Dirty Tricks” for Seminars and Talks)
