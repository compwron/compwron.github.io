---
layout: post
title: "Grace Hopper Data Collection"
tags:
 -
---

This year at [ghc](https://www.gracehopper.org) (2015, Houston) in order to get into any talk other than the keynote, you had to offer your badge and have the bar code on it scanned by one of several conference center staff who monitored each door.

I did attempt to evade these scans, but only succeeded three times over the course of the weekend. If they saw me going by, they would not allow me in without scanning my badge.

# What can we do with this data?

- Give speakers an exact count of how many people saw their talks
- Detect "skip rate" for talks (number of people checked in at talk A that also checked into another talk later, while still in the same session slot)
- What percentage of attendees attended at least one session
- Give the data for employees of company X to the company so that the company can see which of their attendees attended any sessions, and which sessions a particular attendee attended
- Put attendees on mailing lists according to topics that they have demonstrated interest in (by going to a talk about it)
- Detect too-short (or too-long) passing periods between talks- if people who attended talk A and went to talk B were all late for talk B, probably those two rooms were too far apart
- Group the attendees by similar-talks-attended in order to suggest contacts and/or affinity groups to attendees
- Give the list of attendees of a talk to the speaker, so that the speaker can market directly to the interested attendees (I do not think that this would be a successful strategy, but I can see why someone might try it if they were willing to get creepy with the data.)
- If this data is accessible in realtime (which seems totally possible, depending on which app they were using to collect it), send an update to people who indicated interest in talk A but have not checked into any talk yet that talk A is beginning. This also gives an aggressor the ability to find me with excellent temporal and spacial locality. Do not want!

# Things that I want to have done with this data:

None of the above.

None of the above is worth it to me as an attendee. It is incidental to me that it caused long lines to get into popular talks, although that was also annoying. I was not warned that admission to talks at GHC15 would have the additional unexpected burden of submitting to this type of loss of privacy. This lack of warning put attendees in the position of either submitting to the new demand, or deciding on the spot to abstain from talks entirely.

This data collection technique is not normal for conferences and was not announced beforehand.

Of course for many undergrads for whom this was their first conference, this is the "new normal" and I am sure that those who think about it at all are using some combination of the above reasons as internal justification for why this is being done.

# Abuses of data

Most possible abuses of this data are based on specificity of person or company.

Specificity of person:

"Ah, I notice that person A who was on a scholarship only went to two talks; what were they dooooooing the rest of the time? Do they DESERVE to go, if they don't go to talks????" (There are many things to do at GHC that are of equal or greater value than going to talks- notably the career fair, Hallway Track / networking, getting work done because you just got goddamn paged again, getting work done because you have to turn in a college essay on time even though you're not in class, talking to your child on the phone to reassure them that you will be home in a few days, hiding in a quiet corner because there is a really HUGE number of people here and they are all up in your space and that is really stressful).

Specificity of company:

"By correlating the names with companies, we see that of the 60 people that company X brought, 20% of them attended no sessions at all, and only 10 of them attended 90% of sessions. Does this mean that they don't find it valuable? Is company X demanding too much of its people, that they can't even attend sessions? Is it choosing the right people to go, if the people they choose don't use the opportunity? Company X you should reprimand person Y for not going to sessions!" That last is a combination of person and company specificity attacks.


# Other possible approaches:

- Person at the door with a clicker to count attendees (this might require fewer people than the 2-4 badge scanners used for every talk, and it would be faster.)
- Self-reporting through the conference app (already happening) although this gathers less data because it is optional.
- Do like other conferences do and don't worry about it; conference planning is entirely possible without getting the identities of all talk attendees for every talk.
- Post a sign at every room that scanning is optional; as long as you have a badge, you can enter.


# Why am I worried about GHC collecting this info?

Because I hate to see stupid mistakes, especially made by organizations which I want to see continue to succeed and flourish and not have awkward data breaches. Especially considering that some GHC attendees are former/current targets of GoobledyGok (If you know this reference, you know why I am mangling the name)


# Why do I worry about this in general?

Because I consider all collected data to be breached data; maybe no one has done anything with it yet, but I have no expectations that that state will persist.

I don't like seeing practices in data collection that most people don't mind, that that could be very harmful to more vulnerable members of the group.

# Countermeasures:

- Cut the bar code off of your badge and trade it with someone frequently. This does not defeat many of the above abuse patterns, but it might confuse the data trail to the casual observer, and it might make you feel better.
- Decode and read the data in the barcode. It is very unlikely to be checksummed or signed in a non-explicable way, so just replace it with something scannable but not identifying. You will have to switch this every time in order to avoid being tracked as Fake Person A which could later be tied back to your real identity for the above abuse patterns. If you use a fake name that is not registered for the conference, then you will be findable that way (since one can just search the conference database for a particular name) so you will have to borrow someone else's identity for this purpose.
- Buy a badge under a false name, then perform the above countermeasures. (Badge pickup was automated and required only your full name, so that would be fairly easy to get away with, if you could buy the badge with untraceable currency- remember, we are assuming that the conference attendee list will be compromised)

Basically, once this talk attendance PID data is being collected in a mandatory way, there's no great way to avoid someone being able to use it against you, especially if you are the only one attempting to evade the collection process, or one of only a few people.

# Easy fixes?

Have a bin of interchangeable tokens (or rfid cards or something) that every attendee can pick up on their way through the halls. Put them in the swag bags or the badge lanyards; anything that doesn't have name or company or email or any other PID on it. Require a scan of them in order to get into the talk hall, if you must. People who mind will pick up a new one every time, or trade them. Your data will be dirtier, but that is the price you pay for not having to worry about what people will do with your breached data. Disadvantage: someone has to pay for the tokens, or choose to not collect the data.


# Future thoughts

Of course this is valuable data. Of course the conference organizers / conference center want it. They could get a much understanding of traffic flow, attendee preferences, speaker quality... I get it. I just don't think that the value is worth the price.

This data collection is certainly not the only data collection that has followed us each around this week; many people use Facebook, Twitter, Swarm, etc. Why worry about this one specifically? Because it is new. Because it is particularly and excessively valueless. Because it was not consensual. Because it is indicative of an overall trend towards data over people, and lack of foresight. Because maybe it is fixable.

# References

* [Datensparsamkeit by Martin Fowler](http://martinfowler.com/bliki/Datensparsamkeit.html) "The problem with the "capture-it-all" approach is that it raises serious questions of privacy. Even if we trust ourselves to not abuse the data we collect, each data store represents a target for criminals or government surveillance agencies."

-----------------------

Typofixes, questions, factual corrections, and feedback are welcome: please file an issue on github at [https://github.com/compwron/compwron.github.io/issues](https://github.com/compwron/compwron.github.io/issues) or contact [compwron](https://twitter.com/compiledwrong)
