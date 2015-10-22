---
layout: post
title: "TwitterFlight"
tags:
 - conf
---

The talks that I attended were all of surprisingly high quality. The swag was nice. There were actually female speakers, and some (maybe as high as 10% by my guess) female conference attendees. The opening line for badges was not managed super well, but it worked, with some shoving.

# Keynote

I got in early, got my badge, ate some free breakfast, then went to work and watched a liveblog of the keynote. I regret nothing; it looked like mostly product announcements. I got back around 1:15 and honestly I could have skipped the early badge pickup because the line was super short.

# Of the Order of Billions: Building Observability at Twitter by @caitie (*bike)

- metrics, how do, distributes system, queues implicitly have maximums
- visualizations of interneal etrics at twitter
- [koalabird](https://twitter.com/caitie/status/577620087558909952) alerting systems

# Protecting the Twitter Platform (*hike)

- [Botmaker sounds awesome](https://blog.twitter.com/2014/fighting-spam-with-botmaker)
- lots of examples and stories

# A Deep Dive into the Answers Backend (*walk)
- Cannonball (example app)
- "lambda architecture" - process the data offline (?) run thru mapreduce framework, get insights that way. Advantage: computations are repeatable/durable.
- probabilistic data algo?
- [hyperloglog](https://stackoverflow.com/questions/12327004/how-does-the-hyperloglog-algorithm-work) sounds like  lossy compression for data / algo-run [wiki](https://en.wikipedia.org/wiki/HyperLogLog) [redis blog](http://antirez.com/news/75)
- probabilistic median session duration (round and increment?) - round to second below 10 min, to minute above
- median is easier - count from the short end, given that you have recorded how many sessions you've had. constant time median calculation for large numbers.
- Sampling is enabled for 0.2% of all twitter apps (only use the data of X percentage of devices for those apps) Don't sample lower-volume events (install, crash, beta testers, etc)

# Rapid Development and Reliable Testing with Docker (*hike)

- good presenting style
- chef is additive. easy to turn services on, hard to turn them off. evreyone elds up with everything running.
- vagrant on ci does not scale.
- start-all tool: my-tool run www.dev
- learn more about the current docker ecosystem
- "Tutum is the best way to deploy and manage Dockerized applications. Tutum makes it easy for new Docker users to build and deploy their applications. Tutum's operations interface empowers seasoned Docker users to manage the full spectrum of applications, from single container apps to distributed microservices stacks, anywhere."
- virtualbox on mac  shared folders are slow. So use rsync!
- [virtualbox's network is a host-only network](http://christophermaier.name/blog/2010/09/01/host-only-networking-with-virtualbox)
- Galley has a TCP proxy so that you can test from a mobile device talking to an app running in virtualbox

# Building Mobile Applications for Unreliable Networks (*hike)

- All networks are unreliable; mobile more than most. Subway tunnels, buildings, etc.
- don't ddos yourself with retries! (backoff intervals!), clients respect backpressure (retry-after header)
- idempotency! (must be server-side)
- can't lose the tweet when the app stops / is stopped. Persisitent actions!
- retry frameworks...
- CDNs, POP (point of presence) woot
- SPDY and HTTP/2 !!! (SPDY is a google networking protocol, basis of HTTP/2 past 1.1)
- twitter greyboxes - for images as they're downloaded
- new image formats:
  - webp (google's) supports both lossy and lossless complression. Natively supported on 4.2 and above of Android. 30% reduction in image sizes! Virtualy identical to the eye.
  - progressive jpeg (first scan is small and low-quality) (using on iOS, which has native for it?) Experimenting on Androud with [Fresco](https://github.com/facebook/fresco)
- feature: pending tweet
- optimistically update UI locally, even if its not on the server yet (i.e. favoriting a tweet)
- request privatization
- empathy: forecast framework - network quality esitmation- bandwidth, latency. Example: only autoplay on good network
- custom wifi routeers, sent to all offices, simulate thialnd 3G for example
- HAR logger - allows network debugging. [HAR is http netowrk format](http://www.softwareishard.com/blog/har-viewer/) and also [1.2 HAR spec](http://www.softwareishard.com/blog/har-12-spec/)

# Android Developer Options: What can those toggles do for me? (*hike)

- Pointer location (touches location)
- Pink flashing of rendering (faster than the screen capture rate! Not showable in this case) probably could record it with another phone
- GPU overdraw! (to fix issues found here, bring elements on teh same plane, OR transaprent backgrounds)
- debugging crashes! Getting bug reports!
- "Don't keep activities" (as if OS had killed them to get back memory- great for testing that you're saving the data that you need to, in order to give users a good experience.)
- Limiting background processes

# A Technical Deep Dive into NDK Crash Handling (*stroll)

- signal handler chaining (i.e. being a good citizen)
- [reentrant function calls](https://stackoverflow.com/questions/2799023/what-exactly-is-a-reentrant-function) and [stackoverflow](https://stackoverflow.com/questions/2274254/what-kind-of-code-can-be-called-re-entrant) and [g4g](http://www.geeksforgeeks.org/reentrant-function/)
- std::atomic<state *>
- "unwinding libraries" to get the stack trace for us [unwind halp](https://groups.google.com/forum/#!topic/android-ndk/Yi7PonEybIo) [c++ stackoverflow unwind halp](https://stackoverflow.com/questions/25356691/what-kind-of-stack-unwinding-libraries-do-exist-and-whats-the-difference)
- explains dynamic vs static linking
- libcorkscrew.so
- simple-unwinder is not an unwinder (for use when nothing else is available) - extracts the Program Counter, take advantage of function dladder (see what function that dl resolves to)

# AMPlifying the web (*bike)

- [Death to Bullshit (blog)](http://blog.deathtobullshit.com/)
- monetization and user acquisition vs user experience ? (false dichotomy?)
- Making it fast needs to be validatable.
- using [Scalding](https://github.com/twitter/scalding) for mapreduce
- AMP = accelerated mobile pictures
- [links](http://searchenginewatch.com/sew/opinion/2430844/google-s-amp-project-what-will-be-the-impact-on-publishers)
- AMP html, js, cdn (html guaranteed to be fast, userfriendly). UTF-8, link rel=canonical, script async src=, no external stylesheets, amp-img src, amp-ad (html tags, more tightly controlled),
- AMP best practices: no document.write() (synchronous) only async from now on.
- batches dom access (i.e. fastdom)
- download-independant sizing for iminimal re-layng-out of the page
- no user-authored js, subset of tags/selectors, etc, no scrolling elments
- [AMP](https://github.com/ampproject)

# High Performance Web Widgets (*hike)

- "all of our widgets are completely responsive"
- "Keep the web fast"
- Shoutout to AMP (possibly the future; still experimental)
- "There are always more ways to go faster"
- Loading in the shadow dom (not supported everywhere yet- but does go faster)
- twitter-grid, async

# Happy Hour

Meh. Good for what it was. Mac and cheese was good. Supplying hard alcohol at an open bar at a tech conference seems like poor decision-making to me.


# Other notes

- Twitter for mac is coming back
- [Official warning about automating tweets](https://support.twitter.com/articles/76915)
- [USA Today Exploring Galapagos Island](http://www.usatoday.com/topic/69075ecb-9738-49b6-9340-c10f510f5021/galapagos-islands/) I lost the link but this is pretty too
- My notes that look like (*foo) are explained [here](https://compwron.github.io/2015/10/21/how-i-rate-talks.html)


People:

- Saw a BT tshirt go by
- One of the speakers who'd just finished said hi to me, we know each other from game nights at Badger. Cool dude; I wish I'd caught the talk.
- Various people with interesting behaviors, who were avoidable.


# [Python Project Night](http://www.meetup.com/sfpython/events/225954872/)

(this is not related to twitter flight, but it was on the same day)

- Decent pizza, regular soft drinks
- Eventbrite's new office is very pretty, great for meetups, enough room for 3-5 talks concurrently, no real checkin or security other than an amenable doorguard (I arrived a little late)
- Genomics talk was quite good

