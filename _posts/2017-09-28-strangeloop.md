---
layout: post
title: "StrangeLoop 2017"
tags:
 -
---

I attended [Strangeloop 2017](https://www.thestrangeloop.com/2017/sessions.html). Here are my totally disorganized notes, because taking notes is how I pay attention.

Architecture Without an End State (day-long workshop)

* deckset for presentations, bad at images
* good content, all makes sense, not worldshaking (yet)
* boundaries between systems
* no system is ever "done"
* interface table, canonical IDs to interfaces, helps with imprecise communication. John Allspaw, "very predictably, the wrong server got rebooted"
* transport vs encoding
* semantics- what *kind* of json am I getting?
* Ran into Dan and -- from Braintree, Swenson, Mindy :)
* Got a PwL ticket
* reverse conway maneuver (conway tally 2)
* high fan-in means that you need high stability- don't break your dependencies
* shared knowledge- when knowledge needs to be in multiple codebases - what do?
* "it was a business concept that had been around for a long time, but was not not around anywhere... (explicitly)" - publish items with reference to price points... every other system had to be changed to have price point- so many other systems needed a new concept. import processes...
* "the worst kind of concept leakage" could have been handled by the upstream system...
* "microservcies don't address scaling down" they're about facilitating construction.
* [David Parnas paper- criteria to be used in decomposing systems into modules, 1972, makes sense today.](https://www.cs.umd.edu/class/spring2003/cmsc838p/Design/criteria.pdf) "On the Criteria To Be Used in Decomposing Systems into Modules"
* kwic index permuted index, circular shifts of lines
* room filled up
* breakfast did not happen, part of a very dry bagel, then coffee and ibuprofin.
* guy next to me breathes very loudly, seems friendly
* want to find the TW booth :)
* taking hotel toiletries back to SF for the office womens shelter collection bags
* enterprise data dictionary project- "how did it go? you can imagine..."
* we may share nouns across our org, but we don't all have the same definition for that noun. (YES! THIS!) For example- in sales, a customer is  someone you've learned their name. In a support context, customers are people who have bought product and paid for support. Trying to design  anything that supports both of these concepts under one name is hard. You're going to add a ton of flags for customer lifecycle.
* demonware sweater
* I'm getting a lot out of this... not as much as could be got out of it, if I had a better seat and less notary crap to worry about.
* data duplication is ok, but avoid data divergence. system of record is not the only way. entity lifecycyes may differ.
* live insurance company in MN- cost effective- going to keep the minicomp running until the last of the people die... "macabre" pronounced correctly! cool!
* marshalling, unmarshalling...
* 10:07 questions before next module.
* I did mess up my tickets for the preconf day :/
* "you cant get outraged about every outrageous decision in software, you'll be an unhappy person"
* "90% of what this company could receive money for, would not fit in the Product structure... what is not recorded..."
* what can you do with data, vs what its shape in- adjectives rather than nouns
* federate things based on context-carrying data, like URNs or URLs.

--

* part 2- architect as communicator, translator, and - to future-you and your successor/s as well as current stakeholders- between team and ...
* common for team to say "refactoring iteration" ... cringeworthy, should do continually. management doesnt know why... they hear "stop delivering, polish our tailfins"
* "tech debt" as financial debt is a language understood by more than just developers..
* shaman... "keeper of the lore, memory of the tribe"
* documenation- does it add value? How do you tell?
* speaker does lots of clojure, which is very dense code.
* I do wish I could also be at elmconf.
* "tell a story throughh a namespace- works well because clojure doesnt do fwd references"
* CMI or [ISO9000](http://asq.org/learn-about-quality/iso-9000/overview/overview.html) process tends to give docs a bad rap. docs are like the coral left behind when the coral grows there
* docs are for: capture info, present thinking, identify areas to explore
* this would be a great time to code (easy to focus here- like a lecture hall), but I'm actually interested in the content
* the best desk space / workspace ive ever had was the one at groupon... two bg monitors
* https://gitlab.com/mtnygard/arch-folder-template
* script that builds a doc out of it... ready to send to team or client. public repos.
* architecture decision record- like the written embodiment- a weapon against "those developers must have been insane or stupid", fights the loss of context. It is a point in time record. Don't go back and update docs (mostly). It's meant to get out of date. It is a snapshot- a living document only in one end. record new decision, which supercedes the old one.
* yep ADRs are great.
* [https://github.com/arachne-framework/architecture](https://github.com/arachne-framework/architecture) examples of ADRs
* 4+1 views philippe krutchen. this diagram is trying to say a lot- one box is single, one is many one arrow is.
* LoTR joke
* [Simon Brown c4 model](http://www.codingthearchitecture.com/2014/08/24/c4_model_poster.html) and the [main site](https://c4model.com/) "What do the arrows actually mean??" lol
* "When you're drawing this kind of diagram, the boxes don't have a lot of reality to them"
* am I getting arrogant, going to things like this architecture training?
* reminds me of the TW tech lead training in a way- lots of interesting stuff, most of which is familiar and still valuable.
* "that is a design, not and architecture- in teh small, rather tin an in the large."
* gotta communicate both visually and bervally outside of your team. you will be doing it a lot
* "In the past, I have tried to make ppt very accurate and precise. it turns out to not communicate so well outside the team. more abstract representation like a block diagram- will be communicated better. It rubs the engineer in me the wrong way, and communicating at a level of detail which is useful for the listener."
* "the higher your volume, the more you will rely on pubsub and queues"
* presenter wants more data flow diagrams. natural way to think and represent. many people do it by default. arrows are direction of data flow, not direction of invocation. data stores cannot be directly connected to each other. there must be a process that moves it... as reified as a trigger...
* processes must be invoked. something has to know when to run.
* 10:47 pause for questions on communication
* Netflix- container image for groovy- meet all these criteria... interfaces to monitoring systems, circuit breakers, startup routines...

--- lunch break

* separation of concerns
* ran into Paul Spears and Cosmin on lunch break :)
* "maybe it's all left up to spring!"
* Chatted with Dan, 9/12 consultants from his little shop in Chicago are here.
* "you may not have enough ram to handle failover- transient memory during failover is higher than node a or b need during normal operations"
* how do you get back to normal after failover? Or just declare that this is the new primary?
* "Any of these mechanisms that you don't test, by the way, will certainly not work when you need them."
* spectrum of change- data, configuration, code, cross-cutting code, langauge and runtime
* Vox media- guy beside me, in front of me
* ecommerce
* parsimony vs couping
* analogy with photography thing
* dr who vs star trek in openness to new things, can mess with the timeline, obscure mentions.... (I disagree...) but sure
* this workshop is so good that I'm not even really seriously tempted to read my novel... much more interesting than work!
* "unexpected reuse" product toolbox vs product creation, render engine, images as first class
* "production here means printing the new photos"
* school photos- render engine...
* java swing gui, hard to port to web- "richly interactive"
* "we never stopped thinking about the design"
* I saw database migration custom engine on your slides- why was that?
* javaFX 10, awful. spiking a bunch of tings
* unicode strings in mysql- very disruptive
* irreversible change
* "ubiquitious guids"
* "by the time we got to first image on the screen, we were probably already past the point where we could reconsider those" (tech stack choices)
* leaving open space to do new things is much easier than going back and changing a fundamental decision
* 4 people, wanted to work together, never could- all expensive and seniors- 4 valid solutions, not compatible.
* team decided- needed 4 architect problem, by having an architect of last resort. came back and found that I was the architect of last resort.
* now thats a sign of respect- being chosen while not present...
* "better to ask the system than to ask the whiteboard"
* reading http://www.harpersbazaar.com/culture/features/a12063822/emotional-labor-gender-equality/ and pondering my life
* light table
* "One of the big challenges was type conversion"
* "something really gnarly- to push the architecture past what it could do and prove it could not work- we spent a couple long lunches [trying to find something] trying to find solutions that already existed, disproved first approach almost immediately... disproved 2nd pretty quickly... 3rd approach got smart about the type system, and worked."
* "the worst thing I've ever seen- hang on, I need to draw this" building walkway to the architects room, glass walls 2nd floor, literally look down on everyone... come up the stair into exec row, and approach... with deference and tribute to talk to the architects, 3 years late, 40mil over budget" It was the only time id seen the literal ivory tower... visible...
* https://bit.ly/nygard-stl-2017-cards zip link, dropbox
* 1 - big ball of mud
* errr wtf the Ball of Mud definition reference to shantytown, then the speaker made analogy to mexico city... that was a little weird
* 2. backboards - typle space, Linden system, implement backboards? good capacity for parallelism.
* 3- Butterfly shaped pattern- fan in to broker, fan out on the other side. take from n squared connections where every component talks to every other component- all talk to broken. an ESB is a broker.
* Dispatcher/worker or manager/worker "master/slave is in disfavor these days" workers can fail- this centralized faut tolerance in dispatcher so the workers don't have to deal with it
* event stream
* Sounds insane to people who aren't functional programmers, perfectly obvious to functional programmers. relational databases were caused by having not enough space- keeping current, vs all of history. want to replay it into a new system! replica or staging environment, apply a what-if scenario, back-test an algo or piece of code
* if you keep it for a long time, can you still read old events? especially binary format, but also text- json or xml.
* CQRS...
* "print these out, laminate them- i love laminating things- describe how you would make this combo work- up on the whiteboard."
* suffixes
* slack taking some of the usual twitter traffic
* Smalltalk systems, layering
* "the war doctor"
* "pivotal cloud foundry is exactly a micro-kernel architecture for a data center"
* os researchers in the 80s and 90s- tanenbaum and so on- came to fruition, just not under a single system like they thought it would)
* 10 - pipes and filters-  overhead for marshalling unmarshalling, combine stages in interesting ways, separate them temporally, physically- could do batching?
* 11- proxy pattern- prevent direct access.... why?
* API gateway
* Netflix Zuul. ?
* incrementing IDs are BAD (publicly)
* Policy proxy
* for some reason these last two hours have been more bleh than the first two hours, wish Id had my laptop out from the beginning, I missed some good notes and I will never remember...
* POSA six volumes- best are 1 and 3 but all are good.
* The more ways you have of looking at problems.. the better you can choose
* KISSlicer (from neighbor)

--

* Next section "eight rules" vastly expanded version of a talk that he gave, which was just about the 8 rules. brief description- example system. SaaS subscriptions,
* Rule 1 before snack break
* my mental endurance is a little tired
* 1. embrace plurality
* demo system is subscriptions with reminders, omg this is fun I could totally build that
* at least I am hungry to code, that is nice
* "One of my retail clients, and their model completely broke down" SKUs omg lol Stick Keeping Unit. 24oz and 48oz different SKUs. physical good. price and cost, known in advance.
* "how much shelf space does an mp3 take up?"
* also reversed cost and price- showed up as a negative number... partners, marketplace.... one item, not one price? mult partners could offer same item... offer...
* 0-padded, SKU, identifiers should be strings... if int, still do. cannot do math.
* 99% of all SKUs would be screws...
* lots of things being sold has no SKU, went thru quoting system. ditto for services. installs ... no SKUs... cannot make for combo of services...
* "I have a long history of making analogies from one thing that people don't understand... to another thing that people don't understand..."
* federated records? need downstream to use from upstream... many sources... if orderable, then should be able to order. if deliverable, then deliver. if shippable... etc. adjectives
* "can interact with systems that didn't exist when I was deployed" can pre-publish, or interact with doc stores, treat files on server instead of db query. flexibility- not assuming single source of authority
* semantic tests are so much fun
* worst possible answer- meaningful digits in the numbers. EAN in international commerce. LIke UPC code extended to the whole globe. Crazy rules around what they mean, meaningful digits.
* running example- acquired 2 competitors- integrate vendors and customers.....
* first goal of acquisition is reduce operation expenses by merging systems... very expensive to migrate... might be cheaper to not! You might find that the payback period is like... never
* "you can do it in node.js in 30 minutes of coding and 4 hours of package management"
* "some of these are not things you would build a priori.... you never build for a merge... need to build for a fieldstone wall... jerry feinberg wrote a whole book about the fieldstone method. need to find a stone that fits into the hole you already have. merge- dealing with what we have, trying to fill the holes- without running a giant migration project."

-- snack break

* 2nd rule
* "a common issue I see is that data will enter an org somewhere... and be passed along through a number of systems... there are tributaries and eddies and feedback loops (breaking the river metaphor there lol) pretty much always identify a direction of flow"
* street date, pre-orders... omg now I want to build this system
* what can you not see? payment methods that the customer hasn't used..
* book "data and reality" by kent... oldbook, data base spelled as 2 words, its really theoretical [https://www.goodreads.com/book/show/1753248.Data_And_Reality](https://www.goodreads.com/book/show/1753248.Data_And_Reality)
* relational databases - named because of algebra-
* relational algebra ha no such thing as a primary key- just an engineering convenience.
* email bounces- tracking- ?
* "returning from epistemology to architecture..."
* past CSR interactions... and notes...
* service "event" - time, customer(entity), type, subtype,detail.. email not answered, sent human, dog bit... heart of real CSR- time order sequence of interactions, of course can filter by vendor...
* vendors sometimes return products, substitute... FTC laws around that- when substitute, must have option to cancel.
* "programmers can do a lot of harm no matter what... you can't entirely prevent that."
* overloaded meaning of comments field, got an elaborate DSL embedded in it...
* Q: issue with migrating away from detail/entries?
* guy next to me- knows coderanger, from BH area, knows a TWer. :)
* I am more comfy at strangeloop than at uptime or monitorama- probably because I know more people here
* rule 3- decentralize
* local vie, local changes- trying to optimize the whole
* Boeing 777- 300 cost of plane per pound of weight! then delegate to the lowest level. Distributed economic decision making. Communicated how everyone could make decisions in concert. Like magnetic field and iron filings.
* Uber- number of passenger miles.
* Adtech cares about impressions generated
* rule 4- beware grandiosity (global object model, one world model, esb...)
* [FPML](https://en.wikipedia.org/wiki/FpML) financial product markup language - vast, detailed, usable.
* where is the anticorruption layers?
* 5- isolate failure domains
* tracing framework like zipkin will show you this call tree
* Max 14700, minus room rental... how much does he make? Interesting
* failure domain of a service...
* CR cool rendering of equations in messenger using $$ etc
* This is nice, new stuff in brain, rejuvenating. NEED work coding time tho also
* Chaos Community a few weeks ago- critical services affect the "play" button... example: detail screen for a movie, next to title- that set of buttons is returned by a service. If the data doesn't come back in time, don't show it. Users wont miss, once in a while...
* my sublime says license upgrade required...
* Good power strips in this room
* "first of all, an order service is not exactly micro..."
* STL tourist trip someday?
* shopping cart is mutable until...
* shadow of call, failure domain
* inexplicably blank slide
* rule 6- data outlives applications
* data as an asset will outlive your code... example from mailing list company... assembled the year presenter was born. still using data. list of services. ISAM to VSAM to network database (mainframe, mainframe, ?)
* there are still all caps record because mainframe couldn't do lowercase. ebsidic to ascii to utf-8 the data went along...  rewritten in TCL?
* serialized java objects in database columns. json is the limit... (well, yeah, but...)
* "and then you wont be able to change your schema any more because you have all this ETL stuff poking into your database getting your data"
* rule 7- applications outlive integrations
* "Thank you so much for looking out for me!! It really means a lot to me" - from jr I just sent a job op :)
* most architects came from being developers, so they think code centric...
* "I hop Im not beating a dead horse or bashing layers... I think that layers react badly to both- rules 6 and 7 (outliving)"
* ["hexagonal architecture" allister coburn](http://alistair.cockburn.us/Hexagonal+architecture http://fideloper.com/hexagonal-architecture)
* honeycomb design?
* "how different is that from a regular graph?"
* How the hell do I eat food around here
* rule 8- you don't always know what else is going on, in a complex ecosystem - virtual duplicate being built elsewhere...
* "there's a whole world out there!"
* increase discoverability.
* github enterprise, visible by default, immediately helps discoverability.
* "I hope your company is engineering driven, or- has an engineering culture. need visible repos on internal application... all have links t team page- who is responsible, issue tracker, who can I call (or contact) etc. all of these things are table stakes for an external service.... we tend to not do it or internal service"
* recap of 8 rules... 4:13pm, wish there is more, not just questions (ugh, Q&A sessions always have the same flaws)
* hexagonal architecture sounds like bullcrap to me.
* "I'm done, but happy to answer questions..."
* splitting teams is very hard to undo... why? splitting later is easy?? build unified until it makes sense to split... especially if small company or startup. Q: in conflict with plurality? A: in tension is where we find creativity
* [http://paperswelove.org/](http://paperswelove.org/)
* a thing I've learned from watching rich hickey designing clojure- careful adding features- once its there, its not going away...
* decompose systems into smaller and smaller units of commitment...
* the problem with crud is- it doesn't do anything. gotta read it , make decisions, update it. means- misplaced responsibility (so... not a REST fan I think)
* "developers plucked from a pool, thrown into a domain they care nothing about, and thrown back when they are expended."
* attending developer [https://github.com/intellij-solidity/intellij-solidity](https://github.com/intellij-solidity/intellij-solidity) "Solidity is an object-oriented programming language for writing smart contracts." [https://en.wikipedia.org/wiki/Solidity](https://en.wikipedia.org/wiki/Solidity)
* Q: ... honeycomb...
* Q: Simon's model clarification question...
* Slides will be shared, not sure how yet. Bit.ly link or dropbox link sometime soon.
* Q: ADRs adoption issues?

--

Day 1- keynote- tail optimization

* "end of denard scaling"
* servers chart- socket count, unbranded 2+ sockets
* microsoft FPGA for networking?
* electricity in US data centers
* more NUMA domains on a chip (more sockets)
* highly technical language from female speaker as first talk, not super polished at speaking, um ah. thanks to research partners.
* example lucene oss java search
* football got more popular because we mixed football and politics...
* bursty, dirurnal, CDF changes slowly.
* Dick Site person from google
* "hand instrument system"
* troubles with "schematics" and "instrument"? :/
* hardware signals, values or counters.
* "there we go, all the things I just said (slides)" don't need an instrument code,or have interrupt... shared thread, same process- read about of shared locations. observe global state from other code. while true... read LLC misses, ccles
* do the processing on it later, offline. can control through cache partitioning mechanisms, control memory.
* local state with SMT hardware.
* problem: samples are not atomic.
* "do we know this is perfect yet? no of course not, but its look lot clother to groupond truth"
* sample with shim at 10 MHz - really figure it out
* overheads from the same core. overhead from another core, ...
* SHIM signals-
* longest 200 requests. queueing at worker, vs CPU work...
* sitting in fancy opera seats
* because they didn't get me the slides in time
* keep track of load, to know reissue budget
* what is reissuing?
* because I promised you I would show you lots of stuff about lucene
* DVFS faster on the tail
* on your phone but not in servers yet- asymmetric multicore.
* sacrifice average to improve the tail- ^
* best of all worlds, green line, can we?
* based on numbers of requests in the system, hoe many to parallelize- shortens execution time, reduces chance of queueing in he future.
* 21% fewer servers  or educe tail latency and engey consumed by 28% - and that was judicious parallelism
* migrate early under load? migrate oldest first
* adaptive slow to fast network
* if we get crowded on the little cores, we have the oldest migrate first to the biggest core. the opposite of real life
* basic controller design off the shelf, model space of the linerar controller... model piecewise...
* Pegasusu was state of the art from google and stanford, all core frequences for load, at low load, slow all the cores, then increase speed of all cores together.
* vs per core approaches, EETL energy efficient with target tail latency
* way over my head
* assymetric multicore, what id DVFS? EETL_AMP?

---

talk 2: redux at the new york times

* despite being surrounded in the vast majority by men and the usual unpleasantness of being given precedence at doors (unwanted) and not in hallways (wanted) and other similar, I am more comfortable at strangeloop than at uptime or monitorama... mabe because it is enough my arena that I am confident, maybe that I know many people here.
* redux channel on slack, slides are there (conf internet is not working for me right now)
* opera singer and producer, wine sommlier
* casual mention of triggers :) love the full name introduction with origin... YES (bings to mind for me- "immigrants- we get the job done"
* loves the Glow tv s)how
* internal VC model, pitch every few months , stressful! (mi: ...but I like it - keeps away deadwieght, if applied non-oopsly)
* 1010 of unidirectional data flow, redux 1010 :/
* people pimping their talks in conference slack
* "Fixed with makeshift electrical tape made out of lint roller sticky paper, "
* nice because conf slack is more interactive and useful, many-use app.
* slack takes battery... 78% 5 hr remaining with only sublime, no wifi
* this.props vs this.state "if youre using redux all the way, don't use this.state!"
* ugh redux 101 but yay it exists, I do like this model
* conferences are like a vacation but just hard enough to be fun
* when in doubt, lurk he main stage
* yep reducers are great
* actually I'm glad I'm here, it helps me know what I know.
* can find usages of case string in reducers, makes them nice to find
* "and actually this is all I knew when I shipped watching for the first times"
* to watch later: I'm talking at @strangeloop_stl after the keynote about Policy as Code
* diagram of their app, cool
* "so that's no bueno"
* multiple containers- when adding functionality involves many files.
* non primary to app- ads-
* and code that s essential- cards everywhere
* tradeoff: access to state vs pure components
* not container per app? weird?
* 'reselect' library
* composable selectors...
* selector : const fooSelector = (state) => this.state.foo
* change the order of the selectors- from changeless often to change most often
* "I have my own definition of business logic- it's- the things that people tell you to add to your app.
* avoid using app internal state. don't want component to behave differently based on...
* state.app.isppOnClient (server vs non server) ????
* advertising diff url call based on mobile vs desktop .hard for me- because its all one webpage. analytics- not responsive techniques- because analytics- cant just hide using css- double count, thats not good (charges more)
* only render ad when you know window size, state.app.windowSizeOnMount - cool
* "impure top component"
* "btw this is an epiphany I had yesterday" ugh sign of bad / unprepared speaker
* a sign of age, being annoyed by everything- part knowledge, part impatience
* onMount redux
* update url based on search tag- middleware
* middleware= between action and reducer- composer, can have chain, useful for implementing side effects.
* when click tag, take it through redux...
* onboarding for first-click
* conferences, should travel with power splitter oops
* dig out big splitter for Peacock downstairs
* takeaway: always compartmentalize your impure stuff, so everywhere else in the app is well behaved
* refactored the way they save and store save
* he seems really excited that they have caught up with the 60s
* @norsemelon on twitter

---
talk 3- writing git in ruby (before lunch)

* ran into Marianne from USDS, knows Jared Hatch from NY, was commenting on how big this conf is, she is speaking here...
* file systems aren't built to have tooo many files in one folder
* this will be a good talk for developers to watch on video
* hash the compressed or uncompressed files? compressed- is nice, never unhash... uncompressed- defends against compression algo changes (just store which compression algo goes with which hash for which file?)
* permissions name content - enough to store directory.
* should we include permissions? not the same owner between 2 systems, maybe not the same groups, except executable bit.
* a talk about cool stuff yes this is good
* hackathon would be good also
* what separators to use? space of \0 null byte- which one? will separator ever occur in text? filename has no null byte. don't use too many null bytes in things that might be printed later. (why?) so many languages use null byte to indicate end of string... use space...
* putting null byte and sha together is dangerous, SHA could have null byte in it, but ]
* how was this recorded, this is great
* tree command
* "if I were version controlling our version directory- which is a fantastic idea- ha ha, its not"
* tree structure, to mirror how dirs actually are...


museum hackathon talk, yes I got here! with a detour to visit the cute pug dog :)

* API is still running!
* experimental API...
* sold out, 11 projects
* attrition is ok
* 5 teams to final round
* some people made it to final round
* doubled prise money!!
* Philadelphia museum of art
* #hackthemuseum
* "my day [of the day of the submission deadline] went from nervewracking to very worth it"
* [devhost](http://d-h.st/)
* "hackathon.io was not used again, haha" ??
* judged remotely- had to submit a 3 min video also
* 11 projects, peoples choice award, voting handled through wishbone(??)
* version control: judge criteria: innovation, feasible, innovation
* wish
* artingo
* dreamscapes
* bines
* gallery answer question, colored in your color, capture flag, territory game for entire museum, didn't even make top 5 omg
* time bandit
* trying to show a video
* time bandit video, absolute favorites, description- none of the team knew each other :) :) great about hackathons
* this talk makes me want tog go to hackathons
* "this cruiseship can FLY" yass
* winners
* Winners choice- unlock 3D versions of images, turned painting style into diff environments, mocking it around the great hall, rending in jungle. ome!
* Vibes: clue guessing- contribute clues, if no one guessed, you got 0 points, trying to get points in the middle!
* illustrated connection between tech and art, mentoring college students team
* gamedec mentors, fantastic
* their ideas wee beyond what we could get from a survey- no one says on a survey time traceling VR bandit game
* zoom out.... space in slides! saturn, Cassini picture, looking back at earth. thats us. can you see apps from cassini. does anything matter. I would argue that it does.
* the inertia and distance, literally creating meaning.
* "vision and hope, it matters. I practiced this."
* "and I will quote carl sagan, because I'm a nerd and I want to *sniffle sniffle*""
* Lito Nicolai’s Rewriting History talk will be available on his website learnto.computer
* "you are welcome to NOT stick [the stickers] to museum objects"


-- Lunch: not veg other than vegan, happens I guess

* ran into Kozak, people on stairs, ran into Boyle TWer :)
* low on battery power, gotta stop at the quiet lounge at some point
* some mildly unpleasant interactions with venue staff
* saw Vlad in the distance lol
* doximity, platinum sponsor, saw them ins the distance
* tech difficulties with steno setup.
* Yon and Garrett, web auth.
* passportjs, node
* password-local, must provide callback
* database password, plaintext eek. should not be an option.
* salted hash, makes comparison harder. adobe password leak.
* anonnews "everything anonymous:
* [https://scotthelme.co.uk/](https://scotthelme.co.uk/)
* leak continued password hint plaintext
* fli4h.ch
* "same as gmail" password hint sigh
* xkcd crossword puzzle comment
* brute-force a single encryption key, description 150M passwords- and you have hints, so you can check!
* (secure) session management (garrett)
* book- ["twitter and tear gas"](https://www.twitterandteargas.org/)
* server-side sessions, session identifier (django by default)
* "stateless" sends all data- eg Flask
* "cookies aren't the greatest" same origin policy in browser
* flags: http only, secure (per browser..." no tls https connection... persisted on client, using local storage in browser. vulnerable to xss, but CSP can help content security policy- access control for browser.... TWer talk on this would be good
* this talk should be watched by TWers, can do conf talk lunch
* MAC message authentication code, serialize session data, MAC tag
* hard to generate valid without key
* sessions signed, not encrypted... also problem with JWTs....
* user should not have some of the session data... like "winning number for lottery" lol for online games etc
* - swap speaker- compare mac tags
* time to run varies.... == string compare oops
* vuln in early letsEncrypt, she found it, time variation in no mismatch.
* mi- I should
* [semanticscholar.org](https://www.semanticscholar.org/)
* practical over network yep
* constant time comparison. doing extra work on purpose. use xor
* node crypto.timingSafeEqual
* timing as a
* Brad Hill [nccgroup.trust](https://www.nccgroup.trust/us/)
* high level languages- code looks constant time, but compiler optimizes it. oops. gotta actually test I guess. blind the timing channel, add a random ish func
* HMAC node crypto api, why to do this. even slower!
* garritt- beyond passwords. "the yo dawg of-"
* build in leak-detecting password comparator into web auth library?
* how to protect users when when they know that they fallible humans who don't always make right decisions?
* ss7 routing protocol, drain bitcoin
* kinda weird that trumps account hasn't been hacked yet
* hmac or authy, google auth.
* always sends you an SMS- twitter- oops.."if anyone here works at twitter- maybe take a look at thts"
* would be nice to do a 2fa survey of diff public accounts...
* there's a website for seeing who has 2factor auth...
* w3c u2f fido certified, really cool standard, industry group called fido, reworked in open group web auth spec...
* TLS channel ID,
* even if valid TLS cert, cant spoof channelid...
* still easy UX is the plan. need a dedicated thing...
* aapotion...
* [github/hillbrad/u2freviews](https://github.com/hillbrad/u2freviews)
* yubikey with NFC report, apple is not available to 3rd party apps. WIP iOS
* [https://github.com/github/softu2f](https://github.com/github/softu2f) macos keychain, easy to setup
* firefox nightly last week native support for u2f, stable release in 6 weeks, then 80% worldwide...
* websites....
* [http://www.dongleauth.info/](http://www.dongleauth.info/)
* - speaker swap: password-less login systems
* public service conf talks
* [pewinternet.org](http://www.pewinternet.org/)
* 5% of americans use password manager? Seems high
* slack magic links
* email address inbox is single point of failure
* [google transparency report](https://transparencyreport.google.com/)


-- Netflix antics

* ran into Mark Larsen from Braintree :)
* functional vs unit tests.... annotation...
* cold start service, restart, outage...
* john gall- complex systems exhibit unexpected behavior- pediatrician...
* Sydney Dekker, safety science researcher, licensced pilot, how systems get into unsafe states.
* braintree still getting thoughtworks people "glad to help" i said lol
* service becomes latent
* 20-30 braintree people here
* retry storm...
* nice slide labeling
* system fails safe...
* gray failure paper by HotOS, Ryan Huang,
* Guo Zhenyu failure recovery, cure worse than disease
* users think something is wrong, but system doesn't know what- "grey failures"
* 1200 engineers...
* harvard is a hedge fund with a PR firm called university ad tax free status lol
* Cockroft, interesting and unexpected byproduct, also streams movies.
* talking about big company outages gets attention!
* A/B service went down... log messages... kafka... thread takes a lock, also application threads... lock contention,throttled.
* logging took down prod
* aws ebs outage 2012 elastic block storage, us east 1... memory leak in monitor health system
* mitigation...
* ... root causes are nonsense?
* willing to brag oneself because youve seen so many others do it now with so little cause only humble after value signaling
* "drift into failure:
* we cant model our systems well right now
* alvaro: fault tolerance isn't composable - i.e. cant put two together
* met a DBA who wants to work at TW
* paper- looked at formally proven systems, still found bugs
* formally verified operating system?
* "interfaces are dangerous, thats why we don't only rely on unit tests" omg yes, so good
* "this not about software engineers! this is about being a human being!"
* decrementalism- failures happen slowly, incrementally. when is it ok to push to prod? canary deployments... create a smaller cluster...
* canary probably ok, looked harmless, flaky canary...
* tweet from @sadoperator
* "super unfair to the eng involved"
* the bug was... from before! hadn't been noticed, only happened when change in traffic patterns...
* failure was real, but not caused by the code... then there as an issue...

Diane Vaughan- normalization of deviance... where over time, it the org gets used to a thing...

* this is why new people come in and improve things- they're not used to it yet!!
* xkcd about bicycles evolution awesome yes
* Netflix EVCache, in memory volatile cache, nice slides... urls fails, playback has a fallback... one day, traffic spike- not common for Netflix- very predictable! saturated network interface cards on EV cache clusters... "became latent" cache miss, default to treat errors as misses- client will retry!
* vaughan: structural secrecy: you need to know, in order to have access... ugh now I want to work there...
* "make the wrong thing harder" chaos monkey killed itself. successful system design "doesn't cause many outages anymore..."
* omg this is so hpmor
* find vulnerabilities before they become outages
* drug testing analogy, full external validity- prod!
* Netflix "broadcast" function would be interesting?
* Vizcerak. noncritical services. bookmark services. user has to start from beginning, is ok.
* tool Chap, chaos automation platform...
* people behavior differences detection
* [http://principlesofchaos.org/](http://principlesofchaos.org/)
* SPS starts per second... very predictable!
* experiment today doesn't mean will still work tomorrow
* minimize blast radius, small fraction traffic... auto-stop functionality
* chaos experiments can find pathologies
* humans making reasoable decisions can cause systems to get into unsafe states YES THIS YES

stripe talk black box AI understanding

* dog grooming geometric shapes
* sripe develops tools for people working with money
* stripe pitch?
* card testing on donation sites
* fraud detection is so coo. stripe is great.
* stripe branded slides
* fraud adapts constantyl, spending all your time in the dashboard being suspicioun of everything all the time, xkcd yay
* explanation for every blocked charge...
* model outperform matrix
* binaryclassifier,
* does this have anything to do with the notify your credit cad company about travel? where is that used?
* every charge should find a slot in the tree
* ML to generate rules! But auto-change...
* "alll you need to do to wurn a decision tree into a set of rules is jut- pick a thresshold..."
* decision tree means you can simulate the algorithm yourlsef, look inside teh lack box...
* trust- if you block things that seem good to the user, then... they wont trust you
* shallow trees are not very accurate, two decisions are not enough. deep trees are not very explainable.
* 50 or 100 or 1k predicates long is too much for a user... to see and trust. overfit to data.
* 80% chance that strip has seen a card, even if you just launched a biz
* use multi vendor data- this user is unlikely to make this kind of transaction at this time
* other talk [https://github.com/mvolkmann/talks](https://github.com/mvolkmann/talks)
* inefficient and not good but a beautiful story...
* Explanation generated from random forest model, has some truth, it is true... is it the reason? Well...
* post-hoc explanations, give up on any idea, treat as a black box, just forgeddabout it, train another model that tries to explain.
* its easier to justify predictions
* what are the chances... after the fact, the chance is 100% and you can come up with any story. lower effort.
* Ryan Turner paper- Model explanation system- "I was totally bowled over" inspired by the paper
* key her- explain single
* use hindsight! yes!
* TWers here: ryan, vlad, Boyce, kozak, mindy, linda, 2 others with Boyle, other like Jared, Jared...
* prediction, thresshold, explanation. feature, operator, constant (unique card ip address last 24 hours)
* "most people only have patience for six predicates"
* strip more information, end up with "unusually large number"
* In what sense is this an explanation?
* should only trust this if you trust that someone is working hard to make the model accurate and fair
* visualization map to take it over the decision boundary!
* [homes.cs.washington.edu/~marcotcr](https://homes.cs.washington.edu/~marcotcr/)
* training data, wolves in snow, huskies on couches - example
* overfitted heavily n training set...
* AI rationalization
* [https://homes.cs.washington.edu/~marcotcr/blog/lime/](https://homes.cs.washington.edu/~marcotcr/blog/lime/)
* "you're not going to put an ape behind the wheel! when you can have an algorithm! If its the right algorithm!"
* EU right to explanation:
* analogy with 4 year olds explanations...
* "we don't know how to encode everything we care about in the goals of the model"
* "fairness accountability and transparency in machine learning"
* explanations let us see outcomes, interrogating blackbox models, can figure out
* formalize our ethics! In a way we've never really had to....
* "black box models are very explainable and don't trust anyone who tells you otherwise"
* @sritchie


- USDS tak by @bellmar

* TIC Trusted
* Brodie from Stripe security
* Aaron was EPA lawyer, need a lawyer- illegal diagnose technical issues
* small groups of lawyers show up and swashbuckle
* have been trying to fix it desperately for years!!
* 2007 rule, cased TIC, first iphone, internet very different, skeptical about software as a service, don't put anything critical on it... the problem is- decade later, how do you define perimeter security... doesn't work that way??
* Deal by finessing the definition of internal/external to an insane degree. what does sensitive data mean??
* FISMA- FedRAMP "difficult to grok"
* agency specific laws Census title 13, IRS title 26
* Govcloud west coast, got data center east coast.
* amazon GovCloud, specific data center (oh no, only one data center? What about failover??)
* staffed 100% by american citizens, fewer products :/
* TIC is false sense of security and single point of failure
* ...
* zero trust networks- everything needs individual TLS. strict access control, device registration.
* Relies on PKI- someting the gov has struggled with.
* Homeland Security Presidential Directive 12, government wide.. 2011: GAO Government Accountability Office
* No badges compatible
* DoD escort instead of badge, only badge if 6months O.o
* amazon wont build them a https://en.wikipedia.org/wiki/Sensitive_Compartmented_Information_Facility so cant make govcloud a TIF
* TIC reference architecture, says must be a SCIF 30 min away from management location, which assumed to be data center.
* COULD mean a place APIs to manage remotely...
* "cant put classified signatures in the cloud"
* Good Natured Govie ??
* Einstein- intrusion detection sofwtware maintained by DHS, Does not block - web...
* situational awareness and automate data collection...
* "the Einstein system of tomorrow" eeeek
* most important- refocus conversation, !!!
* mi - I am already super looking forward to napssss
* negotiations
* Mirror packets from cloud to einstein?? :)
* mirror from switches? Amazon no. SPAN?TAP
* amazon, gateway routers... amazon specific, not other cloud offerings... VM... iptables (adds lots of overhead)
* load balancer, already all traffic run through, VTIC as load balancer?
* Compliance vs Security
* incremental security: can the government ever get to zero-trust? They are the future! Can we move that way?
* Adding value while moving towards value, not just laying base layers without use until network completion...
* current vs future needs from wishlist- takes careful communication. 5 years, 100s of engineers, thats how intrustion detection works!! well, its hard because... hard to think about problem?
* People who are good at writing policy and people who have technical expertise are rately the same people and have trouble identifiying each other
* OAI report
* Office of American Innovation IT Modernization Report, acting Federal CIO
* https://www.cio.gov/about/members-and-leadership/margie-graves/
* You have no idea how hard questions are to answer
* Officially 24 CFO ACT agencies. breaking down, little ones, 100 to 400... fun conversations about... Freddie Mac and Fannnie Mae, private secotr government straddle, "public" commentary" but really who does is- companies and lobbyists, who don't write short comments I might add
* Googles public comment
* Dude in audience try 2 pages of google ad, 2 pages on policy, all the comments are like that

---
lightining talks

* Human Rictions
* Julia, yay!
* accenture, typescript, anchor4
* chatting with USDS speaker
* microsoft
* Julia- Wadler's talk, 30yr lang in CS to math...
* Surrounded by smart people yay, good feels, overwhelmed feels.
* USDS https://github.com/GSA/modernization/issues/80
* USDS https://github.com/GSA/modernization/issues
* lint
* sublime to visual studio
* "Anyone great attend ace cyber security boot camp?"
* http://www.stlpieces.com/
* "Hamlet is great and all, but let's go back to twitter"
* slack, google (7th official language), reddit!!!
* #MSBuild conferece, C# and .NET creator, EdEx course start tomorrow typescriptlang.org/play http://www.typescriptlang.org/
* slides to speakerdeck

-- lightning 2

* Programming shibboleths.
* Thursday Bram,
* "We all have senses of humor, especially about timezones"
* time honored batttles, still fighting, mems, all the way down.
* injokes
* diversityyyy
* how do you teach the joke? "everybody gets a chance to laugh"
* "HTimezones horror show that will take the rest of your life"

Nick, lightning talks
* @nickvanw eng manager at github, graphql
* typed, introspective, "version free"
* "rest is cool but we needed more"
* schemachange, drives data setup, going all in, graph first
* peole in lambdaconf shirts make me sad I guess but yay lambdas but sad about that conference.
* rate imiting and caching, graphql is still working on how to do those...
* Pam, coworker "vomits code" three different mispellings in three diff ways

IoT without cloud talk

* asyncio apahe 2.0 hst by sef, track on map, home assistant, stae of house,
* https://github.com/strangeloop/StrangeLoop2017/wiki/Lightning-Talks-Sign-up
* http://heather.miller.am/teaching/cs7680/
* hour before sunsuet, turn on light...
* besides yaml... :)

Lito- Voldemort effect!

* harry potter
* hermione competent!
* nature of power...
* we dismiss tech things because we don't understand thhem.... "not built here"
* "i don't know -> no one knows"
* "Ideas are bigger on the inside. there's more to it- history, and reasons"
* knowig a thing's name gives you power of it
* "being dismissive of a thing in tech... makes me certain that I don't understand it!"

"Why not haskell?" Rebecca!

* mi- Jrd at dinner... "Michelle doesnt want to" not very consultant O.o
* PIP unknown, MJ said, Durling...
* sometimes the pitch is bad- haskell
* could I interest you in some monoids or applicative functors
* help solve their current problems, not the ones we think they have
* javascript jokes like php jokes
* abelian monoid
* twilio tour was cool, should do
* the wrong place to start- abelian monad
* "getting stuff done should come before learning category theory"
* like feeling superior, aim for that. but more often, very excited, forget what it was like before they knew, forget which parts are jargon, forget which parts are shibolleths <3

wayne- striking out on our own

* work for yourself, make a living, prepare for...
* more control of destiny, more money, work less,
* they made an announcement because I whinged about the guy with the photographs, "I don't know why they told me to say that" lol
* don't solve problem using language, just solve problem , ... dev in other places charge less, is fact, don't compete with that. don't be a commodity.
* book: strategy and tactics of pricing (2014)
* developers. specializing in vertical is huge.
* relationships and trust is money valuable.
* referrals- partially transitive trust
* credentials. track record. publications, presentatons, podcasts
* "velocity trust table" autonomy spectrum
* toptal, 10x manageent
* hourly == bad
* same thing faster, get paid less (or lie)
* try pricing by: weekly, fixed-fee, value-based
* "A lot of them are cheesy business books and some of them do reference fax machines"
* @wycdd

Jude from Fog Creek

* @blinkymach12
* finding systemic issues your dev practice, via easily observable events
* canary "small creature with high metabolism"
* cats in japan for fish
* honeybees detecting pollution
* OMG YES THIS get the slides!!
* test encoding errors suggest script injection vulnerabilities
* om gyes this
* CR https://github.com/coderanger/talk-ideas/blob/master/monomyth.md
* https://twitter.com/blinkymach12
* SRE hat?

Dee Dee Lavender

* https://twitter.com/@ddlavinder
* introverts
* synergy
* "they have a team exercise called subarctic survival situation"
* "introverts are slow to speak and tend to be deeper thinkers"
* extroverts can be higher volume...
* https://jigsaw.thoughtworks.net/consultants/17662 TWer with us
* creative ways to level playing field
* "don't yuck my yum" yass
* "that is my cat tax"!

practical privacy protection! firebase google SF @eob

* https://twitter.com/eob
* GDPR europe! May 2018
* any users in europe? applies to you :)
* need a better conference not taking machine? ipad with keyboard?
* delete user data when account deleted (workaround- don't require account, track data anyway)
* wipeout and takeout
* so far I have attended every talk slot including lightning talks, missed 8-830 steno demo / open spaces tho
* harder in schemaless datebase to find a users data
* denomalization, including backupp copies! wipeout pipieline, O(user data) is the best you can do...
* schemaless db schema is implicit in schema code
* "privacy expert visiting us- she created" SHE yass
* Holly coach?
* AuthZ system
* previously talk auth0 shoutout during auth talk yass
* mi- auth0, slack, stripe
* https://leanpub.com/queerprivacy
* Dan Zhang firebase cleanup example

Memex!

* "whats your story" square-root.com
* @hyfen (?)
* the human brain files by association! memx ad
* never built, jetpack?? lol
* grade 5 journal info packrat, msn chatogs!
* wants to search hstory, is difficult
* side project, way into the sunken cost fallacy
* even tsourcing
* state is only from transaction log!
* I guess this is why people talk at confs, what coul dI do here?
* triplestore, subject predicate, object, time. verb:liked from instagram, personal iftt ish history
* verb: commanded provider:bash vobject:gipsicle see all flags, timestamps! can see nearby temporal stackoverflow articles. can graph! messaging history. or as graph... visualization, places...
* find link, except recieved while in st louid museum!! omg
* 13 killion relationships among daata, ebooks...
* journaling is awesome
* @hyfen hyfen.net/memex has newsletter

day 3
videos channel [https://www.youtube.com/c/StrangeLoopConf](https://www.youtube.com/c/StrangeLoopConf)
photos [https://www.flickr.com/photos/strangeloop2017/albums](https://www.flickr.com/photos/strangeloop2017/albums)

@nayafia Rebuilding the Cathedral

* "I wrote this talk for me as much as I did it for you" im not an oss developer, just someone interested in how it is... didnt have a background, couldnt look to hhow things have always been..
* "could feel resignation set in, givng automatic answers instead of asking questions"
* Maintainers are the "keystone species" of software development
* one maintainer per little project is 93% of npm, 2015 analysis, less than 3% of widely-used projects are "bazaars"
* 10-250 conributors
* ratio of users to maintainers are getting worse
* "who pays the staff who organize the marathon?"
* "who pays the people who run the food kitchen?" volunteers are not paid staff
* volunteers are not maintainers waiting to happen.
* I am not excited by this keynote, I didnt think I was tired but maybe I am
* this talk does make me want to code though so that's good
* sustainability in open source
* How do we support maintainers- indirect, independence, infrastructure. dedicated employer time
* Behance OSS Babel
* https://opensourcefriday.com/
* https://opensource.guide/how-to-contribute/#finding-a-project-to-contribute-to
* Evan for vue.js
* Patreon?
* https://rubytogether.org/
* mi- cczona, event at TW?
* https://github.com/nayafia/lemonade-stand
* treat OSS as digital infrastructure. its a public good, it shoul dbe supported. bridges and freeways are not a hobby.
* Parnell Treatise on Roads "exposed to insult and ill usage" https://books.google.com/books?id=x501AAAAMAAJ&pg=PA294&lpg=PA294&dq=Parnell+Treatise+on+Roads+%22insult+and+ill+usage%22&source=bl&ots=Q5kFPjCBAN&sig=0CLukdaLrc6A-W8_NqPGcyhiVC8&hl=en&sa=X&ved=0ahUKEwiOq_DZj83WAhXrjlQKHYN0Ag4Q6AEIKDAA#v=onepage&q=Parnell%20Treatise%20on%20Roads%20%22insult%20and%20ill%20usage%22&f=false
* https://rubytogether.org/
* "You woulnt't want one nation state or company dictating what a piece of important OSS would be like"
* don't know who uses projects unless companies say so...
* quantifying value of open source
* I want to be a maintainer... the frustrations of tending the garden sound enjoyable for me as I am now.
* "Think beyond palliative care and coping strategoies for maintainers"
* the live captioner must be incredibly literate, "pallitive care" and weird tech terms etc etc, whitecoat captioning.

--charity majors operations @mipsytipsy

* "the only good diff is a red diff"
* "I will write code if I have to, but code causes problems and I don't like problems"
* @grepory "monitoring is dead"
* "there are people still in this room running nagios, fruit salad of doom"
* "I love strace more than life itself"
* "our tools are fnudalemtally designed to answer known unknowns"
* observability, trm from control theory, unknown-unknowns
* maybe next time I should goto talks that I have never heard of the speaker or topic
* the diff between what I want to know and
* mi- too ego to dude from clareent
* monitoring is biased towward outages
* cant monitor aeverything, can only monitor for known failures
* understandable-
* messing with her hair
* encompasses, how you answer wuestions
* complexity: inherent or accidental, arises out of software x architecture x human process. it is annoyingly subjective.
* architecture is about putting the complexity in the places where you want it instead of the places where you don't want it
* Halstead volume- where the information is, in the source
* "remember back when there way- "the database""
* very condescending to say "write boring code" to someone- you don't understand the problem space
* LAMP vs Parse infrastructure, requests could lopp back in multiple times,
* "We had built  system which was findamentally debuggable byt the time we got acquired"
* "would this work for the power grid?"
* "the health of the system moreor less accurately represents the experience of the indivial user:"
* "I fucking hate dashboars:"
* some relly great slides that I photographes with problems that are arcane and amazing, can I have a book full of arcane problems
* Ran into Lorien at the Netflix booth!
* Josh from Netflix LA
* "the hardest problem is often finding which component/s to debug or trace"
* up and down may not be meaningful- user experience is.
* "do I want to get paged about twenty fucking thousand things"
* "I don't want to get aged for most things, twenty fucking thousand things, or else all my engineers will uit and i will too"
* start at the edge and work down, instrumentation, internal state from softeare you didnt write too, wrap evey network calll, data call
* my little pony theme
* ""events, not metrics?" "
* high cardinatlity data sets work well with metrics- no one has done this yet
* "there and entire generation of engineers internalized limiteations of metrics as being limitations of data
* hundreds? I don't know what datadog does now
* speaker slides as available https://github.com/strangeloop/StrangeLoop2017/tree/master/slides
* metrics are cheap, but terribly limites
* you can sample, it is amazing some people feel
* "I do not recommend that you sample your billing system" should vs must
* don't let engineres act like its not sampled. every request generates many events.
* average api request generated 50 event, at facebook,hundreds
* sample dynamically, not all data should have the same type
* keep all of the 50X, let the rate limiteer slice off the top of the mountain
* is this someting that a guy could do?
* Parse is down, logging endpoint, 61 seconds, 5x both tables scan, deployed there... life changing. SCUBA at facebook was amazing, wifi EDGE server, shopping cart ID
* "cardinality will save you" we did have to write our own storage engine, Ive spent my careeer telling people to not write databases, and I did not do it. It's... a storage engine"
* "With user-defined controls comes great chaos" humans inject chaos
* "structure your data! It's almost 2018!"
* dashboards are artifacts of past failures.
* ending keynote https://docs.google.com/presentation/d/e/2PACX-1vR3Mr4aYyDVpk4C2Kz9m0Qgm0VwA3-SXJXG6erJrlZiRAFBF4brWaI3L5zO6TNzfIoL4mDl79je3OG1/pub?start=true&loop=true&delayms=9000&slide=id.g2782bb7280_0_13
* dashboard blindless- doesnt start with a question
* explorative iteraticve interrogations
* aggregation is a one-way trip
* every api request should be locatable
* mi- def bragged too much
* read time aggregation, going to go home and build tools, b
* "this is not a sales pitch, this is a cry for help" build better monitoring tools
* Nines don't matter if users arent happy
* "thik about the natioal electric grid. you're not going to bring up a stging copy of that. most of the time Ive spent in staging has beenw asted. it drifts"
* "im the proud author of our capture and replay software, for yesterdays traffic, cant predict tomorrows traffic,"
* tooling for production in a place where people are underinvesting.
* "it should feel like a big deal to you when you remember how many interns they have, deploy internal, 1 percent, 5, then external, "
* people are so scared to break production
* force amplifiers (dbas etc) for developers
* conferences help me see the wider world
* the lifecycle of code after you hit ship
* don't hire engineers who wont
* as a group we are not known for our work life balance
* it doesnt have to be awful
* watching it run in production is your fcking job, if you don't want ch it when its normal, you wont know what abnormal looks like
* bring my ego back down to size and make me willing to look at the world
* what you win is drastically fewer paging alerts
* http://www.clearent.com/
* japanese dad pun
* TW camera covers
* @jon_moore
* god of the gaps - religion that fills in only the gaps in science?
* addicted by autohr for talks aslso


rate limiting

* @Jon_meoore
* "40 blistering minutes of queing theory
* microservices are like taco trucks
* big food truck
* API management gateway,
* cosulting-tired
* "capacity mnagement: one cleitn shouldnt impact everyone.
* srelative rate limiting? Not regular rate limiting? "
* dudue look suspicitouly like sarnacke
* x=nr little's law
* jon moore's second law- if opp to ally littles law
* live demo ish, grafana dashoard....
* CLIENT SIDE, FRFANA, I SHOULD RUN ONE FOR PAIRSEE, SEE WHAT HAPPENS, DEVOPS TERRAFORM, WHAT IS.
* SO NOW LETS HAVE A PROBLEM!
* 1latency gets doubled lol
* tshirt view #wholevacation
* shed_load = false origin server, not self protective
* flutter.io Written in Dart under the hood. Hot reload for mobile, iOS/Android
* latency climbing over time, want better dashboards, slunk skills, ?
* things to do with SNC splunk loging,amusement park analogy
* queue forms, britian, lol, line
* snc calculate money throughput
* menu calculate calls from bff
* systems are more fun
* conference serving its purpose, makingme willing to be a software engineer
* queue overflow?
* FasterPaxosCommit is the name of the code of the gy to the right of me
* so if I divide infinityby three and a half...
* number of requests present in the system, response time, "I'm not sure what x should be here, but...: infinity equals infinity
* I want to play the twilio game... are there any talks ther that I should go to? bus out front
* many services wont shed load and protect themselves
* maybe I should I learn to type
* aratelimit doesnt pushback at client when origin has issues
* quota = 5 concurrent request, not requests per second
* coworking spaces tour? TW ask for? acting out? Ibrahim? Gotta plan oklahoma trip, Brasil??
* your tte limiting depends on load in system, isnt that leaking data/ dangerous?
* auth talk slides https://docs.google.com/presentation/d/e/2PACX-1vRQpAoiitWbkHg5hgtp2b7y5kgEEP7e1Z5aOcOB7c8QzEepCpDrotc-DN-WgzWKMpfCRXPQFaT6pHuL/pub?start=false&loop=false&delayms=60000&slide=id.g2776a6c5c7_2_284
* Theron Rabe from @Zymergen talks about how Codon, a DSL for specifying large collections of genome designs. Really awesome! #strangeloop
* throughput != capacity
* https://gist.github.com/ruthienachmany/03f9a9241dfb2b050cbc93e4781472ce  Biomaterials as UI: Designing New User Experiences // Strangeloop Talk // Resources to Learn More
* don't push back if there is capacity!
* TCP conejection avoidance additive increate, multiplicitive decrease, dropped packets are congestion
* ?
* increase total target concrrency by constant c per unit time

Brian Foote @bigballofmud

7s
Listening to @aaron_kimball of Zymergen describe the Radix-4 world of ATCG DNA to a Radix-2 audience #strangeloop #strangeloop2017
OH i also forgot to say .... my colleague @samstokes will be talking about the @honeycombio storage engine, later today!! #strangeloop 🐝🥃💕
adaptively find capacity?
warnong header?
socket timeout?
2x morning waslk (could have been 3) otherwise lyft... really, stay in teh right hotel!!
lua extension for ningx "spin that guy up" :(
thinking during talks
android app for lj, figure it out, more lj?
conference breakfast is yay
mindy commented that I seemed kinda ow for a while
gave stickers to people lol
ejmg [11:28 AM]
It may be silly, but if you know of anyone/project trying to help with Puerto Rico right now that involves something someone far away can help with (like code), let me know. It's horrible to see what is happening there right now and moreso when you don't have some money you can throw at an organization you trust.
litonico [11:31 AM]
hey, have any of you worked as contract trainers in programming? I'm curious about what that's like and if it's a job you'd recommend!
avoidable errors... not-serving capacity that we could have served
financial- no matter what, never drop requests...
https://github.com/aparrish/phonetic-similarity-vectors  Source code to accompany my paper "Poetic sound similarity vectors using phonetic features"
talks https://www.youtube.com/playlist?list=PLcGKfGEEONaDzd0Hkn2f1talsTu1HLDYu&disable_polymer=true
Allison Parrish @aparrish
16h
hey #strangeloop thank you for receiving my talk so warmly! source code for phonetic similarity vectors is here github.com/aparrish/phone…
Reply
Retweet
Like
More options
aidanfeldman's avatar
Aidan F #strangeloop @aidanfeldman
1m
“You know when you open a piece of software, and says ‘you need to bring your master’s degree to operate me’?” @RobbyKraft #strangeloop
over quota but under target (what if youre charging by quota? rather than... handle all)
the laws of demos plus distributed computing, hairpon through loopback of docker networking...
loook ma no hands (demo)
client a try to use all capcity
I seee screenhero and box in there
1 per second, wait for traffic...
papers we love conf sounds nice. elmcnf also
if I did this over- be more clear on the schedule before buyng tickets. plan for lunch and hotel earlier
borrow quota when available
going to have to charge... but also no lightingn talks
jobs.comcast.com

16m
My @strangeloop_stl talk is up! “The Future is Now” it’s about modern visualization of cybernetic augmentation youtu.be/L4fjPojo1yE

NASA and fault events
1h
Thoughtful project by @HelloAxiom88 for helping domestic violence victims escape and find help: jael.ai #StrangeLoop
https://www.fema.gov/

talk think of someone important to you
9 april 2014 911 routing system failure 6k
over 8 hours to fix

leif [12:58 PM]
If anyone has a live usb of any Linux distro on them I could borrow for a few minutes that would be fantastic, my laptop is very sad about acpi or something and won’t boot

* where is 3 mile island?
* assumed it would always work...
* appplyign ideas to your own context....
* airline- tombstone mentality - problem that everyone knows and no one fixes it, until someone dies... "pays their life"
* "softwares biggest sellling point is its leverage"
* aerospace, medicine, energy, natural disasters- gettin gbetter at this. NTSB 140k aviation incidents investigated.
* Talks I want to give at TW SF, maybe in Borg... guide to government sites
* https://www.disasterassistance.gov/
* every airplane part, how many times flown, number of pressurizations- part replaced or rated. software works better after being proven?
* probabilistic risk assessment
* disk fail vs quorum loss, which components should we focus on?
* laguna fire 1970 - miscommunication about who would fix it, two departments interacting became ineffective. ICS
* NIMS
* 2014 911 outage https://apps.fcc.gov/edocs_public/attachmatch/DOC-330012A1.pdf
* https://www.fcc.gov/document/april-2014-multistate-911-outage-report
* https://www.lexology.com/library/detail.aspx?g=fcd46350-ef0d-42ae-8472-b0d6acc8e2ff
* This edition of IT Hiccups of the Week revisits the 911 emergency call system outages that affected all of Washington State and parts of Oregon just before midnight, 9 April 2014. As I wrote at the time, CenturyLink—a telecom provider from Louisiana that is contracted by Washington State and the three affected counties in Oregon to provide 911 communication services—blamed the outages, which lasted several hours each, on a “technical error by a third party vendor.” CenturyLink gave few details in the aftermath of the outages other than to say that the Washington State and Oregon outages were merely an “uncanny” coincidence, and to send out the standard “sorry for the inconvenience” press release apology. The company estimated that approximately 4,500 emergency calls to 911 call centers went unanswered during the course of the Washington State outage. No details were available regarding the number of failed 911 calls there were during the two-hour Oregon outage, which affected some 16,000 phone customers.
* [https://spectrum.ieee.org/riskfactor/computing/it/-fcc-chairman-calls-aprils-seven-state-sunny-day-911-outage-terrifying-](https://spectrum.ieee.org/riskfactor/computing/it/-fcc-chairman-calls-aprils-seven-state-sunny-day-911-outage-terrifying-)
* [https://www.theverge.com/2014/10/3/6414949/911-call-failures-fcc](https://www.theverge.com/2014/10/3/6414949/911-call-failures-fcc)
* [https://www.washingtonpost.com/news/the-switch/wp/2014/10/20/how-a-dumb-software-glitch-kept-6600-calls-from-getting-to-911/?utm_term=.2efe5322bc91](https://www.washingtonpost.com/news/the-switch/wp/2014/10/20/how-a-dumb-software-glitch-kept-6600-calls-from-getting-to-911/?utm_term=.2efe5322bc91)
* [https://spectrum.ieee.org/riskfactor/computing/it/it-hiccups-of-the-week](https://spectrum.ieee.org/riskfactor/computing/it/it-hiccups-of-the-week)
* [https://spectrum.ieee.org/riskfactor/computing/it/it-hiccups-of-the-week-us-state-government-it-system-meltdowns-galore](https://spectrum.ieee.org/riskfactor/computing/it/it-hiccups-of-the-week-us-state-government-it-system-meltdowns-galore)
* [https://www.fema.gov/pdf/emergency/nims/nimsfaqs.pdf](https://www.fema.gov/pdf/emergency/nims/nimsfaqs.pdf)
* [https://www.fema.gov/national-incident-management-system](https://www.fema.gov/national-incident-management-system)
* [https://www.seattle.gov/emergency-management/hazards/infrastructure-failures](https://www.seattle.gov/emergency-management/hazards/infrastructure-failures)
* [https://www.ncbi.nlm.nih.gov/pmc/articles/PMC1299330/](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC1299330/)
* first cehcklist used in airplanes
* 2 airline merge- which checklist wins
* thought automation
* lobby tshirt, bus, twilio tshirt,
* united flight 173
* https://en.wikipedia.org/wiki/United_Airlines_Flight_173
* http://lessonslearned.faa.gov/ll_main.cfm?TabID=1&LLID=42
* https://en.wikipedia.org/wiki/United_Airlines_Flight_2860
* https://en.wikipedia.org/wiki/Eastern_Air_Lines_Flight_401
* https://en.wikipedia.org/wiki/Tenerife_airport_disaster
* crew resource management- formalization of interactions
* https://en.wikipedia.org/wiki/Crew_resource_management
* It really annoys me that so many talks are more basic, wherei sthe joy
* "never waste a good crisis"
* RCAs http://itmgr.org/process-management/root-cause-analysis-rca/
* "If you look back in time, all mistakes look like a choice. ...but these things are not clear in the moment [when they happen"
* https://software.nasa.gov/software/HQN-11316-1 The NASA Root Cause Analysis Tool (RCAT) has been designed to facilitate the analysis of anomalies, close calls, and accidents and also identify the appropriate corrective actions to prevent recurrence. The software provides an analyst with a quick, easy-to-use, accurate, and repeatable method to perform and document root cause analysis, identify corrective actions, perform trending analysis, and generate usable data for probabilistic risk assessment. All possible causes of accidents-hardware, software, the environment, weather, natural phenomena, external events, human error-can be incorporated into the timeline and fault/causal factor trees. The software features an intuitive logic diagramming capability and uses standard terminology, definitions, and symbols.
* https://software.nasa.gov/top20
* internal data on near misses...
* all pilots can anon report, ASRS issues monthly newsletters https://en.wikipedia.org/wiki/Aviation_Safety_Reporting_System FAA forbidden from prosecuting pilots who submit to ASRS https://asrs.arc.nasa.gov/
* https://www.usa.gov/ USA.gov is your online guide to government information and services.
* walmart and waffle house
* walmart louisiana "do the right ting" ocal responders, supplies, store inaccessible, bulldozer, suppplies to parking lot, broke into pharmacy, en
* https://www.dailykos.com/stories/2008/4/3/489440/-
* http://www.visajourney.com/forums/topic/119818-real-katrina-hero-wal-mart-study-says/
* https://en.wikipedia.org/wiki/Waffle_House_Index
* try to be the waffle house of the internet

devsecops talk

* terraform, github, yep
* met cool persons
* http://www.cse.psu.edu/~gxt29/bug/softwarebug.html
* https://www.cs.tau.ac.il/~nachumd/horror.html
* http://www.cigniti.com/blog/software-failures-2016-testing-prevented/
* works for veracode
* calculate price per talk?
* my TW security talk, refresh and give- dunno what I'm talking about, a survey course
* where is chris schuster at?
* conference networking ftw
* test should have iam policy
* "I'm not sold on having a lot of tests for your infrastructure yet" WHY NOT
* life dashboard of conferences attended, DO IT:
* conf name, conf size (talks attended, people attended (dot size)) exact date, notes link, ticket cost (color), my rating- shape?
* bbs
* bbc flowlogs from aws
* working for chexmark or veracode coul dbe  fun
* cloudtrail logs
* http://www.snopes.com/fraud/phishing/hotel.asp
* Cloud Custodian by capital one, OSS python https://github.com/capitalone/cloud-custodian
* https://www.hashicorp.com/sentinel/
* https://github.com/awslabs/aws-security-benchmark
* https://www.thestrangeloop.com/2017/policy-as-code-with-sentinel-language.html
* https://medium.com/netflix-techblog/introducing-aardvark-and-repokid-53b081bf3a7e
* https://github.com/Netflix-Skunkworks/aardvark
* https://github.com/Netflix/repokid
* "all this work to avoid creating jira tickets"


Key to the City: Writing Code to Induce Social Change

* Jurnell Cockhren https://www.thestrangeloop.com/2017/key-to-the-city-writing-code-to-induce-social-change.html
* inequality- "wprks on my machine vs "user issue!" for govt"
* "We know that this problem exists- we are either a victim of it, or a witness to it"
* "Our blockers [when fixing the bug of inequality] include the emotions of the decision makers
* I'm really encouraged by how many people in these audience are not diverse and are here listening
* http://labs.comcast.com/registration-now-open-for-software-as-craft-conference-2017
* nschrenk [2:54 PM]
* http://sophicware.com/
