---
layout: post
title: "StrangeLoop"
tags:
 -
---


Architecture Without an End State

deckset for presenations, bad at images

good content, all makes sense, not worldshaking (yet)
boundaries
no system is ever done, wher sustems

interface table, canonical IDs to interfaces, helps with imprecise communication. John Allspaw, "very predictably, the wrong server got rebooted"
transport vs encoding
semantics- what *kind* of json am I getting?

Ran into Dan and -- from Brraintree, swenson, Minddy :)
Got a PwL ticket

reverse conway maneuver (conway tally 2)


high fan-in means that you need high stability- dont break your dependencies

shared knowledge- knowledge needs to be in multiple codebases

business concept around for a long time, but not around anywhere.
publish items with reference to price points... every other sstem had to be chanced t have proce point- so many other systems needed a new concept. import processes...

"the worst kind of concept leakage" could have been handled by the upstream system...

"microsercies dont address scaling down" theyre about facilitating consturciont.

David Parnas paper- criteria to be used in decomposing systmes into moduces, 1972, makes sense today.

kwic index permuted index, circular shifts of lines
room filled up
breakfast did not happen, part of a very dry bagel, then coffee and ibuprofin.
guy next to me breathes very loudly, seems friendly
want to find the TW booth :)
On hotel and lyft, mention Minday for TW expenses.
taking hotel toiletries back to SF
enterprise data dictionary project- "how did it go? you can imagine...""
we may share nouns across our org, but we dont all have the same definition for that noun.
in sales, a customer is osmeone youve learned their name. in a support context, customers are people who have bought product and paid for support. trying to design anything that supports both of these concepts underone name is hard. Youre going to add a ton of flags for customer lifecycle.
demonware sweater
Im getting a lot out of this... not as much as could be got outof it, if I had a better seat and less notary crap to worry about.
data duplication is ok, but avoid data divergence. system of record is not the only way. entity lifecycyes may differ.
live insurance company in MN- cost effective- going to keep the minicomp running until the last of the people die... "macabre" pronounced correctly! cool!
marshalling, unmarshalling...
10:07 questions before next module.
I did mess up my tickets for the preconf day :/
"you cant get outraged about every outrageous decision in software, you'll be an unhappy person"
90% of what this company could recieve money for, would not fit in the Product structure... what is not recorded...
what can you do with data, vs what its shape in- adjectives rather than nouns
federate tings based on context-carrying data, like URNs or URLs.
--
part 2- architect as communicator, translator, and - to future-you and your successor/s as well as current stakeholders- between team and ...
common for team to say "refactoring iteration" ... crngeworthy, should do continually. management doesnt know why... they hear "stop delivering, polish our tailfins"
"tech debt" as financial debt is a language understood by more than just developers..
shaman... "keeper of the lore, memory of the tribe"
documenation- does it add value? How do you tell?
speaker does lots of clojure, which is very dense code.
I do wish I could also be at elmconf.
"tell a story throughh a namespace- works well because clojure doesnt do fwd references"
CMI or ISO9000 process tends to give docs a bad rap. docs are like the coral left behind when the coral grows there

docs are for: capture info, present thinking, identify ares to eplor.
this would be a great time to code , but im actually interested in the content
the best desk space / workspace ive ever had was the one at groupon... two bg monitors
https://gitlab.com/mtnygard/arch-folder-template
script that builds a doc out of it... ready to send to team or client. public repos.
architecture decision record- like the written embodyment- a weapon against " those developers nmust have been insane or stupid", fights the loss of context. point in time record. dont go back and update. its meant to get out of date. it is a snapshot- a living document only in one end. record new decision, which supercedes the old one.
yep ADRs are great.
https://github.com/arachne-framework/architecture examples of ADRs
4+1 views philippe krutchen. this diagram is trying to say a lot- one box is single, one is many one arrow is.
LoTR joke
Simon Brown c4 model


"when youre drawing this kind of diagram, the boxes dont have a lot of reality to them"
am I getting arrogant, going to things like this architecture training?
reminds me of the TW tech lead training in a way- lots of interesting stff, most of whih  is familliar and still valuable.
"that is a design, not and architecture- in teh small, rather tin an in the large."
gotta communicate both visually and bervally outside of your team. you will be doing it a lot
in the past, I have tried to make ppt very accurate and precise. it turns out to not communicate so well outside the team. more abstract representation like a block diagram- will be communicated better. runs the engineer in me the wrong way, and communicating at a level of detail which is useful for the listener.

"the higher your volume, the more you will rely on pubsub and queues"
presenter wants more data flow diagrams. natural way to think and represent. many people do it by default. arrows are direction of data flow, not direction of invocation. data stores cannot be directly connected to each other. there must be a process that moves it... as reified as a trifgger...

prcesses must be invked. something has to know when to run.

10:47 pause for questions on communication
Netflix- container image for groovy- meet all these criterisa... interfaces to monitoring systems, circuit breaksers, startup routies...


--- lunch break

separation of concerns
ran into Paul Spears and Cosmin on lunch break :)

"maybe it's all left up to spring!"

Trembly in the hands, do more exercise...
Chaltted with Dan, 9/12 consulnats from his little shop in Chicago are here.
"you may not have enough ram to handle failover- transient memory during failover is higher than node a or b need during normal operations"
how do you get back to normal after failover? Or just declare that this is the new primary?
"Ny of these meachanisms that you don't test, by the way, will certainly not work when you need them."
spectrum of change- data, configuration, code, cross-cutting code, langauge and runtime

Vox media- guy beside me, in front of me
ecommerce

parsimony vs couping
analogy with photography thing

dr who vs star trek in openness to new things, can mess with the timeline, obscure mentions.... (I disagree...) but sure
this workshop is so good that I'm not even really seriously tempted to read my novel... much more interesting than work!
"unexpected reuse" product toolbox vs product creation, render engine, images as first class
"production here means printing the new photos"
school photos- render engine...
mi- simplicity in wondows... really hard to ipck a talk to go to... grarh, stick to mainstage? Hop between builidngs? Plan ahead..... museum...
impossible
java swing gui, hard to port to web- "richly interactive"


"we never stopped thinking about the design"

I saw database migration custom emgine on your slides- why was that?
javaFX 10, awful. spiking a bunch of tings@
unicode strings in mysql- very disruptive
irreversible change
"ubiquitious guids"
by the time we got to first image on teh screen, we were probably already past the point where we could reconsider those
leaving open space to do new things is much easier than going back and changing a fundamental decision
4 people, wanted to work together, never could- all expensive and seniors- 4 valid solutions, not compatible.
team decided- needed 4 architect problem, by javing an architect of last resort. came back and found that I was the architect of last resolrt.
now thats a sign of respect- being chosen while not present...
"better to ask the system than to ask the whiteboard"
reading http://www.harpersbazaar.com/culture/features/a12063822/emotional-labor-gender-equality/ and pondering my life
light table
"One of the big challenges was type conversion"
"something really gnarly- to push the architecture past what it could do and prove it could not work- we spent a couple long lunches [trying to find something] trying to find solutions that already existed, disproved first appraoch almost immediatelly... disproved 2nd pretty uickly... 3rd appraoch got smart about the type system, and worked. "
"the worst thing I've ever seen- hang on, I need to draw this" building walkway to the architects room, glass walls 2nd floor, literally look down on everyone... come up the stair into exec row, and appraoch... with deference and tribute to taklk to the architects, 3years late, 40mil over budget" It was the only time id seen the literal ivory tower... visible...

https://bit.ly/nygard-stl-2017-cards zip link, dropbox
1 - big ball of mud
errr the Ball of Mud fdefinition reference to shantytown, then the speaker made ananalogy to mexico city... that was a little weird , reminds me of my convo with Zak
2. backboards - typle space, Linden system, implement backboards? good capacity for parallelism.
God I would really like a gym rught now to do upper body workouts to burn off this caffiene jitter
3- Butterfly shaped pattern- fan in to broker, fan out on the other side. take from n squared connections where every component talks to every other component- all talk to broken. an ESB is a broker.
Dispatcher/worker or manager/worker "master/slave is in disfavor these days" workers can fail- this centralized faut tolerance in dispatcher so the workers dont have to deal with it
event stream
Sounds insane to people who arent functional programmers, perfectly obvious to finc programmers. relational databases were caused by having not enough space- keeping current, vs all of history. want to replay it into a new sysytem! replica or staging environment, apply a awhat-if scenario, back-test an algo or piece of code
if you keep it for a long time, can you still read old events? especially binary format, but also text- json or xm.
CQRS...
print these out, laminate them- i love laminating things- decscribe how you would make this combo work- up on the whiteboard.
suffixes
slack taking some of the usual titter traffic
B. Davis [8:27 AM]
I am very sad to hear this.  I am glad you didn't get injured.  I have been in this situation before and it's very scary.
Prasanna Gautam
So, @U6YHUSEN6 and I just got pulled over and handcuffed for a short while at Tower Grove neighborhood as we were driving back to our Airbnb from downtown. I was driving and saw cop lights in the back as I was turning left, so I took the turn and pulled over immediately. We were asked to take our hands out of the window, then I was asked throw my keys outside..
Then a female police officer came with a gun pointed at me and asked us to get out of the car. Then we were asked to turn around and the officers started handcuffing us immediately. I asked whether I was being arrested. By then my left hand was handcuffed already, and a senior police officer seemed to realize it was done in error and asked me for my identification. He also asked the female officer to uncuff me. We were then asked to sit at the curb and cross our legs. They asked if we were coming back from downtown. They’re looking for a suspect (possibly driving black camry, but I decided it wasn’t wise to pry further). After searching our car for weapons, and not finding any they let us go after telling us it was in error.
Anyway people, be careful and stay calm. I feel like we got a taste of what many Americans live in fear of every day.
Smalltalk systems, layering
TODO scoot, and layers
"the war doctor"
"pivotlal cloud foundry is exactly a microkernal architecture for a data center"
(person behind me sneees and then say ssorry"
os researches in 80s and 90s tanenbaum and so on- caome to fruition, just not under a single system imace like they thought iw ould)
10 - pipes and filters-  overhead for marshalling unmarshalling, combine stages in interesting ways, sepaparate them temporallys, physically- could do batching?
11- proxy pattern- prevent direct access.... why?
API gateway
Netflix Zuul. ?
if aI correct them directly thouhg....
incrementing IDs are bad
TODO read Cade's email about password reuse, rewrite doc for myTW? based on our actuals?
Policy proxy
for someon reason these last two hours have been more bleh than the first two hours, wish Id had my laptop out from the begiining, I missed some good notes and I will never remember...
POSA six volumes- bst are 1 and 3 but all are good.
The more ways you ahave of looking at priblmes.. the better you can choose
KISSlicer (from neighbor)
--
Next section "eight rules" vastly expanded version of a talk that he gave, which was just about the 8 rules. breif description- example system. SaaS subscriptions,
Rule 1 before snack break
my mental endurance is a little tired
1. embrace plurality
demo system is subscriptions with reminders, omg this is fun I could totally buid that
at least I am hungry to code, that is nice
"One of my retail clients, and their model completely broke down" SKUs omg lol Stick Keeping Unit. 24oz and 48oz different SKUs. physical good. price and cost, known in advance.
"how much shelf space does an mp3 take up?"
also reversed cost and price- showed up as a negative number... partners, marketplace.... one item, not one price? mult partners could offer same item... offer...
0-padded, SKU, identifiers should be strings... if int, still do. cannot do math.
99% of all SKUs would be screws...
lots of things being sold has no SKU, went thru wuoting system. ditto for services. installs ... no SKUs... cannot make for combo of services...
"I have a long history of making analoies from one thing that people dont understand... to another ghtin that people dont understand..."
federated records? need downstream to use from upstream... many sources... if orderable, then shoul dbe able to order. if deliverable, then deliver. if shippable... etc. adjectives
mi- does elomi have a warranty?
"can interact with systems that didnt exist when I was deployed" can pre-publish, or nteract with doc stores, treat files on server instead of db query. flexibility- not assuming single source of authority
semantic tests are so much fun
worst possible answer- meaningful digits in the numbers. EAN in inernational commerce. LIke UPC code extended to the whole globe. Crazy rules around what they mean, meaningful digits.
runnign example- acquired 2 compeititors- integrate vendors and customers.....
first goal of acquisition is reduce operation expenses by merging systmes... very expensive to migrate... might be cheaper to not! Yuo might find that the payback period is like... never
"you can do it in noce.js in 30 minutes of coding and 4 hours of package management"
"some of these are not things you woud build a priori.... you never build for a vmerge... need to build for a fieldstone wall... jerry feinberg wrote a whole book about the fieldstone method. need to find a stone that fits into the hole you already have. merge- dealing with what we have, trying to fill the holes- without running a giant migration project."
-- snack break
2nd rule
"a common issue I swee is that data will enter an org somewere... andbe passed along through a number of systems... there are tributaries and eddies and feedback loops (breaking the river emtaphor there lol) pretty much always identify a direction of flow"
street date, preorders... omg now I want to build this system
what can you not see? payment methoods that the customer hasnt used..
book "data and reality" by kent... oldbook, data base spelled as 2 words, its really theoretical https://www.goodreads.com/book/show/1753248.Data_And_Reality
realtional databases - named because of algebra-
relational algebra ha no such thing as a prmary key- just an engineering conveneience.
email bounces- tracking- ?
"returning from epistimology to architecture..."
past CSR inteeractions... and notes...
person sitting in front of me? https://twitter.com/emilywithcurls
Check bags with bellman desk, not front desk...
https://venmo.com/sammy-nickalls
service "event" - time, customer(entity), type, subtype,detail.. email not answered, sent human, dog bit... heart of real CSR- time order sequence of interactions, of course can filter by vendor...
vendors sometimes reture products, substitute... FTC laws arond that- when substitute, must have ooption to cancel. mi- look this up?
"programmers can do a lotof harm no matter waht... you cant entirely prevent that."
overloaded meaning of comments field, got an elaborate DSL embedded in it...
Q: issue with migrating away from detail/entries?
guy next to me- knows coderanger, from BH area, knows a TWer. :)
I am more comfy at strangeloop than at uptime or montiroama- probably because I know more people here
rule 3- decentralize
local vie, local changes- trying to optimize the whole
Boeing 777- 300 cost of plane per pound of weight! then delegate to the lowest level. Distributed economic decision making. Communcated how everyone coul dmake decisions in concert. Like magnetic field and iron filings.
Uber- number of passenger miles.
Adtech cares about impressions generated
rule 4- beware grandiosity (global object model, one world model, esb...)
FPML financial product markup language - vast, detailed, usable.
https://en.wikipedia.org/wiki/FpML
where is the anticorruption layers?
5- isolate failure domains
tracing framework like zipkin will show you this call tree
Max 14700, minus room rental... how much does he make? Interesting
failure domain of a service...
CR cool rendering of equations in messenger using $$ etc
This is nice, new stuff in brain, rejuvenating. NEED work coding time tho also
Chaos Community a few weeks ago- critical services affect teh "play" button... example: detail screen for a movie, next to title- that set of buttons is returned by a service. I fthe data doesnt come back intime, dont show it. Users wont miss, once in a while...
my sublime says license upgrade required...
Good power strips in this rom
"first of all, an order service is not exactly micro..."
STL tourist trip someday?
shopping cart is mutable until...
shadow of call, failure domain
inexplicably blank slide
rule 6- data outlives applications
data as an asset will outlive your code... example from mailing list comapny... assembled the year presenter was born. still using data. list fo services. ISAM to VSAM to network database (mainframe, mainframe, ?)
there are still all caps record because mainframe couldnt do lowercase. ebsidec to ascii to utf-8 the data went along...  rewritten in TCL?





























































