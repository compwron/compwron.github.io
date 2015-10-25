---
layout: post
title: "Looped Strangely"
tags:
 - conf
---

Strangeloop 2015. I have been wanting to go to this conference for years.

[Recorded talks](https://www.youtube.com/channel/UC_QIfHvN9auy2CoOdSfMWDw)

## Talks

# [keynote 1] Dedalus language "I see what you mean"

- "Abstraction is sometimes harmful"
- "[Ideally] You blow away the haystack and you see the shiny needles"
- Having a professor do the keynote means you get a well-taught keynote.
- askjeeves
- abstraction, distributed systems on fire
- "and then a million flowers will bloom"
- "select bullshit from table where sql = 'aaargh' order by hate;"
- the meaning of a program is what it does VS is the databases that make it true
- meaning is just data
- tshirt: create view mortal select * from human
- "I've been seeing a lot of things on twitter where people think they know what programming languages are- or aren't."
- "unfortunately. classic sql doesnt have a way to express recursion."
- datalog!!
- [http://www.eecs.berkeley.edu/Pubs/TechRpts/2009/EECS-2009-173.html](http://www.eecs.berkeley.edu/Pubs/TechRpts/2009/EECS-2009-173.html)
- "many behaviors, one meaning"
- hippiespeak
- "Would the outupts still be good if I lost a replica?"
- "Here's a program that I don't recommend that you write! it doesn't have a unique meaning; it has two meetings- it depends on the order in which the data arrives and the rules fire."
- subtle HPMOR shoutout?
- "I cant conclude something from something that I know, something you know, without us talking!"
- "Can't conclude from something I know, and something I don't know yet.... or that I've forgotten"
- state is induction over time
- state is what makes the otherwise unlikely rondeavous of epherma possible
- "the problem is... its an infinite-sided die"
- [existentialcomics.com/comic/98](http://existentialcomics.com/comic/98)
- replay-baseed debugging: if something bad happens, then its guaranteed to always happen!
- Eoin Coffey ‏[@ecoffey](https://twitter.com/ecoffey)
- "Rub some lamport clocks on it" -palvaro // @strangeloop_stl
- "we dont really want to exponentiate over the network"
- I will enjoy the transcript of this
- "the world of meanings, where they ask if their program is correct"
- language: bloom (new instead of dedalus), then blazes
- "using their chaos animals!" netflix
- eve - progrmming lang for non programmers
- "when do we want it? eventually!"
- committing acts of abstraction!
- looking for phd students
- [http://witheve.com/](http://witheve.com/)
- [http://www.bloom-lang.net/calm/](http://www.bloom-lang.net/calm/)
- [http://www.cs.berkeley.edu/~palvaro/molly.pdf](http://www.cs.berkeley.edu/~palvaro/molly.pdf)
- [http://www.chris-granger.com/](http://www.chris-granger.com/)


# strange&fast parsers with nom and rust:

- [CleverCloud](https://www.clever-cloud.com/en/), rust, dbg, colorful hexdump, safe parsing
- [nom](https://github.com/geal/nom)
- questions, meh
- Geoffroy Couprie ‏[@gcouprie](https://twitter.com/gcouprie)  10m10 minutes ago
- slides of my #strangeloop talk abt Rust nom parsers [http://dev.unhandledexpression.com/slides/strangeloop-2015](http://dev.unhandledexpression.com/slides/strangeloop-2015)
- code: [https://github.com/Geal/nom](https://github.com/Geal/nom)  benchmarks: [https://github.com/Geal/nom_benchmarks](https://github.com/Geal/nom_benchmarks)
- [http://trevmex.com/post/129851560378/how-to-have-your-causality-and-wall-clocks-too](http://trevmex.com/post/129851560378/how-to-have-your-causality-and-wall-clocks-too)

# isomorphic js

- react
- [https://github.com/elyseko/iso-react-demo](https://github.com/elyseko/iso-react-demo)
- [https://twitter.com/sfdrummerjs](https://twitter.com/sfdrummerjs)
- build tools for this project: [webpack](https://webpack.github.io/), [browsersync](http://www.browsersync.io/), gulp
- "node vs browser- they're both good guys, but sometimes they fight" (batman vs superman reference)
- libraries that have lifecycles that don't play nice with react's.
- what they use is "flux-like"
- relay is coming out!
- [https://github.com/elyseko](https://github.com/elyseko)
- "We got into some... state situations..."
- Materials from the talk on "How machine learning helps cancer research" are available at [https://github.com/evelinag/cancer-research-and-ML](https://github.com/evelinag/cancer-research-and-ML) company: Brigade

# visualizing your code

- omniscient debugging, riak with svg, library falafel- old and simple, walk abstract syntax tree
- window splitting!
- others: whyline, reacher
- snapshotting and deterministic replay
- store the sources of nondeterminism
- timelapse(webkit) lets you do this well
- symbols that make sense once youve seen them in context
- 15 min for questions :/
- [http://janpaulposma.nl/#visualising-program-execution](http://janpaulposma.nl/#visualising-program-execution)
- good "the question is"


# Bernhardt - ideology

- (Ran into Dusty- speaking rather than attending)
- "But since he was not a programmer, he was ok seeing only three boxes in the table"
- sessions throwback: [http://lanyrd.com/2009/strange-loop/](http://lanyrd.com/2009/strange-loop/)
- Watching #strangeloop talk about HTTP2 & Erlang re: chatterbox, hoorah for supervisor pattern on erlang vm
- correctness, type vs
- burrrn dynamic programmers- leap of faith that it works
- "QuickCheck just makes more examples" haskell https://hackage.haskell.org/package/QuickCheck
- hackernews.. theyll use more words and probably be meaner...
- "but I need null!" this only mkaes sense if null is the only way to represent absence.
- "before I was alive, I was wrong about this. I just needed to be a college student who liked arguing in order to - find out."
- "hurting people is bad"
- if you could turn it into a fluid and pour it into a vessel, that vessel would be hackernews
- film: "pervert's guide to ideology"
- [destroyallsoftware.com/book](https://destroyallsoftware.com/book)
- "There's no assertion above the assertion, showing that the assertion is right."

# building scalable stateful services, by Cate

- twitter! tech lead for observability
- [@caitie](https://twitter.com/caitie)
- amazing skirt
- polished slides, presentation style
- "Pick two... you don't get to not pick partition tolerance, because physics"
- No stickiness once the connection breaks
- backpressure- machines can break connections when they're overwhelmed.
- pink text woo!
- random placement
- twitter's ManhattanDB
- Amazon's DynamoDB
- scuba - by facebook -
- [uber ringpop - nodejs library](https://github.com/uber/ringpop-node)
- Orleans - Actor Model - from xtreme programmign group at MSR
- orleans distributes hash table
- running almost-hot very fast because it could rebalance
- "clients are not your friends. they are not going to do what you want them to."
- not user-noticeable so there was a pretty animation playing- distraaact
- dynamic cluster membership?
- slow rolling restart of the cluster- 12 hr
- decouple memory

# Art of service discovery at scale: (NiteshKant, netflix)
- RxNetty
- Zuul contributor
- TODO me read https://newsroom.fb.com/news/2015/09/updates-for-facebook-notes/ (Zelinski)
- do it by heartbeat? heartbeat returns service name and version? :p or other standard endpoint... howto do without - standard endpoint?
- sending events to endpoint.... what about catastrophic shutodwn?
- network partitions.. you can not-plan-for them, but - even inside one datacenter- you cant' avoid em
- heartbeat send to box-tracking server, vs heartbeat callable
- unavailability can be trusted. node status voerride?
- cap theorem
- mi peeve: "gone wild" because it brings up images of spring break beach
- do not evict if more than x% vanish
- [eureka](https://github.com/netflix/eureka)
- "If you were to have a takeaway"

# Keynote - Activism (Idalin/Abby)

- "give opportunities" [a certain type of]
- bring to this conference- that ppl might not get anywhere else
- "how you can get involved"
- "to me" <3
- inspiring
- "push the needle" misinterpretable
- "teachers didnt call on me because they couldnt say my name"
- 19133 the poorest zip code in philadelphia
- 75% dropout rate
- more substitute teachers than actual teachers
- forced to encounter the police all the time
- couldn't understand
- went to prof- told her to drop out and go to middle school
- she was asked to not come to study group "you keep us behind"
- "My mom crowdfunded my first laptop [after almost dropping out of college]- back then, crowdfunding was knocking on - people's doors"
- statistics - because where are these? They never come to my hood
- making more than my mom, dad, grandma combined- 50k
- found out through google where the tech industry was
- I got this- because this is bigger than me.
- I packed the car with food, not clothes.
- MBA at Mills college - social impact. and cs!
- I never knew that I knew how to code- I thought that this was something that other people did.
- India Rise - ran program - 80 students.
- black girls code - goal a million
- Interesting... audience....
- politicsssss
- "borderline in depression" cried for many days, not doing enough in the world. felt like my brother died.
- winter 2014 - founders of Yes we code and Keynote labs - SJ hackathon
- "What if an app could have saved treyvon martin"
- interesting social media
- "so many black deaths... couldn't evn go to work feeling like ourselves."
- lots of
- how does that rate compare?
- rosa clemente
- cussing on stage
- powerful dude on twiter [TefPoe](https://twitter.com/TefPoe)
- people shy away from danger
- "without me knowing" er
- fine for grass too high. generating revenue from fines.
- 1/92 municipality in st louis
- "I don't agree, because if I agreed, I would have to do something."
- "bring in the help that they were trying to attract"
- [handsupunited.org](http://www.handsupunited.org/)
- site for reporting police brutality - blog about this? tech solutions? Something like Caliope, maybe?
- "we were being surveilanced"
- "They arrested me for filming an arrest" #strangeloop @AbbyBobe
- "a thousand retweets.... didn't protect the people."
- "What would a tech program look like if the black panthers launched one?" use it to protect their people
- "Taking the revolution to the cloud"
- https://lockerdome.com/
- [Roy Clay Sr.](http://blackinhistory.tumblr.com/post/42835659013/roy-l-clay-sr)
- easy to discount
- "I believe that you all have magic powers"
- "revolutionary technology" - should only be for the people?
- [dreamdefenders](http://www.dreamdefenders.org/)
- chant went surprisingly well

# After hours

- hangouts with TWers and zem, Idalin, <3 (technically the first time I hung out with a keynote speaker at a conference lol)

# [After hours talk] continuous delivery and dependency management

- jars, memory eviction, [https://groups.google.com/forum/#!topic/play-framework/XpRkm4NYvoQ](https://groups.google.com/forum/#!topic/play-framework/XpRkm4NYvoQ)
- "Not a good teambulding experience to have extreme continuous integration"
- moving classes is a problem. eviction and class conflict.
- We dont have it because we don think that we need it yet because we havent built systems big enough to kill us yet
- optimizing for nt changing as often??
- [http://10kftcode.blogspot.com/](http://10kftcode.blogspot.com/)
- [https://github.com/pslusarz/dependency-integrator](https://github.com/pslusarz/dependency-integrator)

## Saturday

intro to keynote could be better.

# Keynote

- "embrace hopelessness, build confidence"
- "three systems that I have built"
- "Dharma talks"
- dynodb postmoretem by amazon earlier this week
- [http://lesswrong.com/lw/jq/926_is_petrov_day/](http://lesswrong.com/lw/jq/926_is_petrov_day/)
- "Because otherwise people would not be able to do their jobs (tone of doom)"
- distributed shared memory - which never works - appropriate- "oh god, no. just no"
- "depending on specialty vendors for key parts of your system is a risky idea."
- "just the right access points to the data"
- jgroups [http://www.jgroups.org/](http://www.jgroups.org/) <- negative connotation
- [https://twitter.com/ri_cook/status/646800080595460096](https://twitter.com/ri_cook/status/646800080595460096)
- "rewriting successful production systems is one of the hardest things to do."
- under-breath utterances
- "If you don't understand zookeeper, I have other talks on it, you can look at them"
- TODO read zookeeper!
- "Building our own distributed data store was not in scope"
- sharks eating cables.
- lookup. local zookeeper. writes go to local, reads go across the globe
- "encode that somewhwer else- look like a global system but be a series of local systems"
- "what are you saying when you make this joke?"
- "you can also scale your humans! human, go build a service"
- "People quitting is like hard drives failing at google. People move across the country, decide to become artists, - or just get sick of your shit."
- etto principle http://erikhollnagel.com/ideas/etto-principle/index.html
- "death star" architecture diagrams
- "You can always build a big ball of mud" "Silence comes via good design"
- "humans fundamentally understand asynch. that the state of the world is always changing. People who are not tech - people are smarter than we give them credit for. They are unforgiving of errors related to money."
- Dharma talk- a bunch of examples to teach a principle.
- even if you do something
- "it's fine. It's fine."
- [https://dl.dropboxusercontent.com/u/87445919/Timeline.jpg](https://dl.dropboxusercontent.com/u/87445919/Timeline.jpg)
- "test your freaking code"
- TODO read [http://trevmex.com/post/129868723083/apache-kafka-the-next-700-stream-processing](http://trevmex.com/post/129868723083/apache-kafka-the-next-700-stream-processing)

# Streams!

- All glory to the pipe operator!
- [https://twitter.com/pamasaur](https://twitter.com/pamasaur)
- there is definitely such a thing as infinite data
- object literals
- generators
- indexes instead of values
- babeljs
- polyfill - In web development, a polyfill (or polyfiller) is downloadable code which provides - facilities that are not built into a web browser. It implements technology that a developer expects - the browser to provide natively, providing a more uniform API landscape.
- baconjs, highlandjs, rsjs
- baconjs
- "I like when the words actually map to the constructs."
- [https://streams.spec.whatwg.org/](https://streams.spec.whatwg.org/)
- [https://gist.github.com/staltz/868e7e9bc2a7b8c1f754](https://gist.github.com/staltz/868e7e9bc2a7b8c1f754)
- fetchAPI [https://fetch.spec.whatwg.org/](https://fetch.spec.whatwg.org/)
- [https://babeljs.io/](https://babeljs.io/)
- Jason Carr ‏@maudineormsby Folks at #strangeloop are oddly fond of saying "...because reasons."
- "If you're a javascripter, you may have heard of... every single build system..." #strangeloop - #omgStreams
- "My favorite is that millennial children become snakelets" ()
- https://github.com/getify/You-Dont-Know-JS
- get links from slides https://github.com/rackt/react-router/tree/master/examples
- http://aster.is/projects/
- TODO blog/research opensource pages of companies (via medium, because pictures?)
- TODO js tutorial in console? import library and use it.
- pamasaur
- podcast turing incomplete


# Transactions!!!!

- [https://martin.kleppmann.com/](https://martin.kleppmann.com/)
- [https://speakerdeck.com/ept/transactions-myths-surprises-and-opportunities](https://speakerdeck.com/ept/transactions-myths-surprises-and-opportunities)
- ACID C is diffferent than C in CAP theorem :)
- multi-object atomicity- rollback writes on request-rollbackability
- plug in the names of all your things, and draw out a combination- lightning/latency/unreachable etc - for failure system modeling?
- TODO me redo golang restful server in... some ruby thing?
- neeeeed to switch languges for a bit.
- IBM system R
- I like the slides!
- "I'm not qualified to talk about distributed systems, so there will be no pictures of things on fire."
- [oreilly library](https://library.oreilly.com/)
- [omgstreams](https://pselle.github.io/omgstreams/#1)
- "repeatable read" sometimes means "snapshot isolation"
- mvcc - multiversion concurrency control
- oracle "serializable" mode is not serializable?
- write skew (we saw this at BT- tried to minimize time between)
- 2phase locking, pessimistic
- (aside: http://nodebots.io/
- http://hstore.cs.brown.edu/ VoltDB "H-Store is an experimental main-memory, parallel database - management system that is optimized for on-line transaction processing (OLTP) applications. It is a - highly distributed, row-store-based relational database that runs on a cluster on shared-nothing, main - memory executor nodes."
- Postgres
- [Philip Wadler](https://twitter.com/PhilipWadler)
- detect conflicts and abort
- [lisperati](http://lisperati.com/logo.html)
- postgres serializable
- "at the price of preventing a lot of concurrency"
- [Paxos, Raft, Zalo](http://engineering.cerner.com/2014/01/the-raft-protocol-a-better-paxos/)
- "We seem to be stuck in this place where there are no transactions (between different service)"
- compensating transactions
- detct and fix constraint violations - warehouse oversold, send discount codes
- Failure jackinthe box (time goes backwards)
- "still capture causality"
- best talk to show to coworkers
- [lasp](http://lasp-lang.org/)
- programming SEC
- "teach us to outgrow our madness"
- CRDTs - every strangeloop ever
- convergent programs
- lattice processing
- brief discussion uring morning keynote- choosing seats
- Cartesian product of the set's metadata
- [inflationary read](http://composition.al/blog/2015/08/31/whats-the-difference-between-inflationary-and-monotonic-functions/) - insures [Lidsay Kruper](http://www.cs.indiana.edu/~lkuper/)
- selective hearing (work in progress) - building on gossip protocol
- endemic broadcast based runtime system
- advertisement counter
- unpublished appendix. what can the dataflow graph tell us about placement?
- "it[what?] needs to ....commutative, idempotent and have the ability to be inverted"
- map + filter = fold?
- SyncFree
- [Distributes, eventually consistent](http://christophermeiklejohn.com/publications/wpsds-2015-preprint.pdf)


# Performance engineering at MasterCard (*step)

- Ted Boehm
- "there's a whole fraud business out there"
- "organized crime at the most technical level"
- history traits of card/region
- A little too corporate
- tiers
- stresstest - fail, bottleneck io
- tiers would outperform the testing tools
- very general :/
- found issues- no one had ever looked
- Weird internal culture. Blame vs collaboration.
- affinity level n server- receives and sends on different cpu
- get rid of parallel gc, use CMS? - concurrent mark sweep https://docs.oracle.com/javase/8/docs/technotes/guides/vm/- gctuning/cms.html
- "flat response time" Zing vs Hotspot
- https://support.azulsystems.com/hc/en-us/articles/200856690-How-is-Zulu-different-from-Azul-s-Zing-
- http://www.azulsystems.com/sites/default/files//images/Azul_Performance_Brief_JBoss_Data_Grid_v4.pdf
- Max pause repseon times zing vs hotspot
- Talking about managers in a not complimentary way :/
- "get funding from manager" does not sound like a cooperate environment"
- He keeps saying "they"
- "They don't get that. Gotta make a simple graph."
- todo rate talks

# Swift/objective-c (*walk)

- [Interop](http://blog.benjamin-encz.de/swift-error-handling-and-objective-c-interop-in-depth/)
- big mapping layer
- [music slides](https://github.com/ctford/kolmogorov-music)
- opportunty cost (of interop)
- memory management
- shims. isolated from nice implementation- take them out as soon as you don't need them
- Box
- read swift code... write ipad app to make ipad useful? priorities app, plays music? :)
- free function shim.
- Generics
- "This code doesn't compile... or maybe it silently fails at runtime. I forget."


# distributed system

- harvest and yield model
- coda hale
- Cook & Rasmussen model "going solid"
- system safety - what we do under pressure
- "so yeah, don't kill people"
- build support for continuous maintenance
- reveal control of system to operators
- know that it will be used in ways that you did not intend.
- ["Going solid": a model of system dynamics and consequences for patient safety](http://www.ncbi.nlm.nih.gov/pubmed/15805459)
- Gerald Susman Borrill model Building Robus Systems
- [music paper](http://www.titanmusic.com/papers/public/MeredithMEC2013ProceedingsPaper.pdf)
- Netflix. Now with sparkles!
- Chubby paper - key insights.
- library vs service
- [trevmex's notes for Matthias Felleisen’s talk](http://trevmex.com/post/129938243213/big-bang-the-world-the-universe-and-the-network)
- http://codahale.com/
- http://developer.clearent.com/
- cognitive diversity
- SREcon Joao's talk
- "existing best practices won't save you"
- Faild - system-
- ecmp Image result for ecmp
- Equal-cost multi-path routing (ECMP) is a routing strategy where next-hop packet forwarding to a single destination - can occur over multiple "best paths" which tie for top place in routing metric calculations. https://en.wikipedia.- org/wiki/Equal-cost_multi-path_routing
- keepalived - switches rather than hosts. Fake ip address, map to mac address, node fails, switch mac address.
- I would ask you to show your work because maybe I think youre full of shit
- "there are things that we will never be able to protect against"
- TODO show this presentation to teammates, with explanatory notes
- checksum things in memory as well as disc.
- TODO think about the meetup group. get more co-sponsors. fb group.
- Strangeloop diversity- STL is good for it. Two diversity talks. Lots of feamle attendees. Duty officer! <- - excellent excellent excellent. Code of conduct! Yes. Ratio is huge but I feel more yay than I have in similar situations.
- Rantifesto
- [Architectural patterns of resilient distributed systems](https://github.com/randommood/strangeloop2015)


# closing talk: security

- Citizen Lab https://citizenlab.org/
- https://firstlook.org/ Dir of Security
- Privacy and Coercion-Resistant design
- used to be a pen tester
- power plants, wanter nsaitation, airlines, google security...
- KiwiCon new zealand :)
- Snwden- the hero of the developers
- systems thinking
- number of strangeloop attenddees who return twice?
- asmr for academic email
- connotations of "hobbyist" - interesting thought
- one time only - a jukebox, taking request
- "freedom botherers, do-gooders"
- Morgan
- re-broaden
- "My computer was arrested before I was."
- "In my end of the woods, attribution is tricky"
- BahrainWatch foundation FinFisher patient-zero
- dnt get any idea... i woudl be really pissed if taht were the takeaway of this talk.
- where do the transcripts go? do want.
- hacking team
- paper: the smartphone who loved me
- Security for Humans: Privacy and Coercion Resistant Design
- Morgan Marquis-Boire
- http://www.thestrangeloop.com/2015/security-for-humans-privacy-and-coercion-resistant-design.html
- I'm looking at my phoen and I start thinking about putting it in the fridge. Aaaah, I've become one of those - people. Odd trust relationship- first thing in the mroning, last thing before bed.
- teleStrategies ISS WOrld
- "Wiretappers Ball" in DC
- BlueCoat https://www.bluecoat.com/
- Some devices wander by mistake: planet blue coat redux
- I mean, how petty cana state be? the answer is very.
- "the trail was greasy and kind of cold. I did what I could, and kept the data..." - vietanamese govt surveillance - practices
- Chris Mronitt- article author. associated press, in hanoi, got a doc -
- So journalists need a constantly-reflashable machine, that can access anonymous email- fwd each article recieved to - a new address before opening it?
- non-legitamate targets, non-combatants. activists, journalists, last public work before leaving google.
- hacking team
- "AM I just doing free QA for these people?" (hacking team)
- "This stuff is kind of grim, so I like to stick pictures of kittens in my slides."
- whispersystems
- silent circle
- cryptophone
- recommends movie [The Lives of Others](http://www.imdb.com/title/tt0405094/)
- GCHQ
- eve's older, meaner sister Mallory. MITM at scale- if you own the wires. put a rack in data center. isolate traffic - stream, inject into download of binary, and change it.
- ;arge service, find out ppl actively exploiting it to protect your sers.
- "I would inject the hell out of people who use my guest wireless."
- you want it to me so stable that it can run at the same time as the kernel code of the russian hackers, and still - not crash!
- todo watch that cartoon that Z likes to make my brain happy again someday.
- todo go to writing meetup
- rubber hose cryptography. costs political cachet.
- advanced russia persistent china threat israel
- pay-for-tools tier
- "never underestimate someone who is cash poor but time rich. when will they stop? we dontt know. this person might - be pissed forever."
- bubble wrap inside the door under the carpet
- "which kind of makes me a little- uncharitable, shall we saw."
- the security community is traditionally great at designing unusable systems
- coercion-resistant design
- Bitlocker BitLocker (codenamed Cornerstone and formerly known as Secure Startup) is a full disk encryption feature - included with select editions of Windows Vista and later. It is designed to protect data by providing encryption - for entire volumes.
- lavabit shut down
- skype
- xbox, WoW also etc
- DNSsec root key

## The story of how I got a ticket

I put the ticket sale on my calendar, but they sold out in just a few hours and I did not realize that this would happen, so I checked on day 2 or thereabouts. I put myself on the waitlist, which did eventually work, although I had a ticket by then so I bought it under my friend's name who had also missed the original sale, and whose waitlist slot had not come up yet. I [asked on twitter](https://twitter.com/compiledwrong/status/633497600876896257) whether anyone had a ticket, and I was answered by someone who said that their friend had one... we coordinated via email, I sent $700 (100 of which he later returned, since StrangeLoop waived ticket transfer fees) via squarecash to a mostly-stranger, and everything went great! Since hotels were sold out and/or expensive, I stayed in an airbnb about a 15-minute drive away, and used lyft/uber. Next time, I will try to get hotel + tickets much sooner!

## People (I've run into):

- Pete (while boarding the plane)
- [zem](https://twitter.com/zem42) (travel buddy)
- two speakers on the train (js for robots, and js ... isomorphic js)
- some guy in a groupon hackathon shirt on the train
- Amanda, [Ryan](https://www.thoughtworks.com/profiles/ryan-oglesby)
- Ray Hightower :)
- Some... people... former TWers?
- Ron <3
- Spargo <3
- Dusty (groupon) + 2 companions
- Lady from adobe, priorly of startup
- amazon/heroku awesome lady (Courtney) Seattle. Velocity NY
- andconf dude
- double union lady
- Nick from BT (Saw Dan also)
- After-conference playing of card games: girl who works at Continuity (ruby), guy Scott who is managing an eng org (python)
- Zendo people! Juliene George Patrick James Ethan
- shoutout to the guy who awkwardly sat right next to me for the first keynote for unknown reasons despite the isle seat he could have had what was your deal I don't even

## Booths are hard

I have opinions on how to do a really good technical booth at a conference, but no evidence. Some nopes: don't pass out shirts without - explanation- unless that's the best- they'll research it when they wear it- have a lot of - 'discoverable' info- don't have booth-minders who aren't paying attention, it will get literally less attention than if they weren't there.

# Other notes

- [Riot Games Engineering blog](http://engineering.riotgames.com/)
- broke my phone at the museum. Whoops
- $ estimate per talk- conf fee minus food- 30/talk? Good deal on average :)
- Rakudo is an implementation of perl6
