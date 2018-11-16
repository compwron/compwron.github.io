---
layout: post
title: "RubyConf 2018 notes"
tags:
 - conference
---

Talks I attended, with some light commentary:

## Day 1:
1. Keynote by Matz! [recording](https://youtu.be/_YU_gIEPABQ)
2. [The Games Developers Play](http://rubyconf.org/program#session-706)
3. [Designing an engineering team](http://rubyconf.org/program#session-669) Jack Danger, former Square, is a really great speaker and I really like the points he makes about how you want multiple knowledge specialites on an eng team. This is a talk that I will send the recording to my team, and rewatch it myself.
4. [Yes, You Should Provide a Client Library For Your API](http://rubyconf.org/program#session-689) [slides](http://daniel-azuma.com/articles/talks/rubyconf-2018) The head of google API clients talks about the great smart things you can build into an api client, and how google and other big companies generate these libraries for the huge matrix of APIs and languages that they are needed for. This is a topic I have some previous exposure to through the Braintree SDK team but this talk is great and pretty mindblowing imo
5. [Uncoupling systems](http://rubyconf.org/program#session-671)
6. [Ethical Data Collection for Regular Developers](http://rubyconf.org/program#session-664) This talk was a little intense and very real-world. The offical talk description really says it all: "The DC Abortion Fund collects extremely sensitive data about people seeking abortions. That's terrifying for the engineering team, who are responsible for keeping client data safe! We've made a lot of carefully measured ethical decisions about data intake and usage." The speaker discussed how in the current climate including ICE raids, they have stopped gathering immigration status data (and purged the old data) because even though that data helps them give clients much better service, the risk of subpoena is much too great.
7. Keynote by Bianca Escalante [recording](https://youtu.be/_YU_gIEPABQ) I liked that this was a keynote- she spoke about the responsibility of society and the most secure members of society to help, specifcally to help homeless people. She gave some great lists of organizations that are doing good in the world- I want to find her slides.

## Day 2:
1. [Keynote by Saron Yitbarek](https://rubyconf.org/program#session-734) This was an interesting talk about the difficulty of community-building, with a focus on helping new developers. Saron is an excellent speaker and the talk included elements of her personal story.
2. [Running a Government Department on Ruby for over 13 Years](https://rubyconf.org/program#session-714) I chose to attend this over the subcalssing Hash talk because govtech is very interesting to me. this was a very very excellent talk with a lot of notty-gritty details about how the [California Audit Department](https://www.auditor.ca.gov/) codebases work, and how they got to this point. The speaker, Jeremy Evans, has some very impressive open source contributions. The other talk in this timeslot that interested me was [Let's subclass Hash - what's the worst that could happen?](https://rubyconf.org/program#session-692) which went over case studies of three major bugs in the library Hashie which subclasses ruby hash. The core maintainer of this library is requesting that people stop using it in favor of other approaches. I'm looking forward to watching the recording of this talk.
3. [The Developer's Toolkit: Everything We Use But Ruby](https://rubyconf.org/program#session-709) Mostly about customizing command-line tooling.
4. [Pointers for Eliminating Heaps of Memory](https://rubyconf.org/program#session-680) Aaron Patterson is a core developer of ruby and a great presenter who makes an enormous number of terrible puns. This is a walk-throguh of several performance improvements that he has made to ruby. Some of it went over my head and I hope to rewatch it to understand more.
5. [Parallel programming in Ruby3 with Guild](https://rubyconf.org/program#session-686) This talk is about a under-development feature to add native parallization to Ruby.
6. I mostly room-hopped and then skipped this timeslot because I was tired
7. [Make Ruby Write Your Code for You](https://rubyconf.org/program#session-725) This talk described in simple terms a [Google Cloud](https://github.com/GoogleCloudPlatform/magic-modules) OSS library for code generation.
8. Lightning talks! I attended all 1.5hr of the lightning talks. Highlights:

* Square rkofman@ talking about being a feminist as an Engineering Manager
* TODO

## Day 3:
1. Keynote- Unlearning by Jessie Shternshus - basically, continuing education is important and can be hard to motivate for established engineers
2. [Branch in Time](https://rubyconf.org/program#session-711) Demonstrating some code archaeology to find the source of a weird change in a codebase- digging through multiple git committs and refactors, and also multiple deprecated work-tracking systems.
3. [Building Generic Software](https://rubyconf.org/program#session-715) Interesting discussion about generalizing codebases and what types of code can actually be data. Rails is used as an example for part of the time.
4. I skipped the after-lunch commandline-generated music session to go to [an amazing bookstore](http://lastbookstorela.com/) and the [LA Central Library](https://www.lapl.org/branches/central-library)
5. [Building a Memex with Ruby](https://rubyconf.org/program#session-722) a self-data-system which uses the APIs of basically every service this guy has ever used, with a big noSql database and a really cool DSL search language, so he can look up any link he's ever searched for or read, any place he's ever been, and cross-reference etc etc.
6. [High-speed cables with ruby](https://rubyconf.org/program#session-712) about [ActionCables](https://guides.rubyonrails.org/action_cable_overview.html) (websockets) for use in "real-time" systems. Summary; ruby is slower than other lanagues so call those languages from ruby if you care about speed at volume.
7. Ending keynote- Q&A with Matz


