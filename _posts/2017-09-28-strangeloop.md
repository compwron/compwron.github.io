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
serialized java objects in database columns. json is the limit... (well, yeah, but... lol)
sunset 6:48pm here... welp
shuttles...
"and then ou wont be able to change your schema any more because you have all this ETL stuff poking into your database getting your data"
rule 7- applications outlive integrations
my lj app has stopped working :/
"Thank you so much for looking out for me!! It really means a lot to me" - from jr I just sent a job op :)
most architects came from being developers, so they think code centric...
"I hop Im not beating a dead horse or bashing layers... I think that layers react badly to both- rules 6 and 7 (outliving)"
"hexagonal architecture" allister coburn http://alistair.cockburn.us/Hexagonal+architecture http://fideloper.com/hexagonal-architecture
TODO take a train?
honeycomb design?
"hwo different is that from a regular graph?"
How the hell do I eat food around here
rule 8- you dont always know what else is going on, ina complex ecosystem - vitual duplicate being beuilt elsewhere...
"theres a whole world out there!"
increase disoverability.
github enterprise, visible by default, immediately helps discoverability.
"i hope your comapny is engineering driven, or- has an engineering culture. need visible repos on internal application... all have links t team page- wheo is responsible, issue tracker, who can I call (or contact) etc. all of thse things are table stakes for an external serice.... we tend to not do it or internal sercice"
recal of 8 rules... 4:13pm, wish there is more?? not just wuestions, eew??
hexagonal architecture sounds like bullcrap to me.
"I'm done, but happy to answer questions..."
Hardest parts ias bac hurts. poor guy
splitting teams is very hard to undo... why? splitting later is easy?? build unified until it makes sense to split... especially if small company or startup. Q: in conflict with plurality? A: in tensioni shwrere we find creativity
http://paperswelove.org/
a thingive learned from watching rich hickey designing clojure- careful adding features- once its there, its not going away...
decompose systems into smaller and smaller units of commitment...
the problem with crud is- it doesnt do anything. gotta read it , make decisions, update it. means- misplaced resposibility (so... not a REST fan I think)
developers plucked from a pool, thrown into a domain they carenothing about, and thrown back when they are expended.
attending developer https://github.com/intellij-solidity/intellij-solidity "Solidity is an object-oriented programming language for writing smart contracts." https://en.wikipedia.org/wiki/Solidity
Q: ... honeycomb...
Q: Simon's model clarification question...
Slides will be shared, not sure how yet. Bit.ly link or dropbox link sometime soon.
Q: ADRs adoption issues?
1st floor - drinks, band
2nd floor - drinks, Riot Games board game lounge
3rd floor - snacks, drinks, sponsor tables for MailChimp and Monsanto
Roof - it's amazing! The elevator is to the right of the ticket booth at the entrance. Take the 10 story slide down ... if you dare!
"just in time for christmas... great gift..." laughter...

--
Day 1- keynote- tail optimization
"end of denard scaling"
servers chart- socket count, unbranded 2+ sockets
microsoft FPGA for netwroking, ??
electricity in US datacenters
more NUMA domains on a chip (more sockets)
highly technical language from female speaker as first talk, not super polished at speaking, um ah. thanks to research partners.
example lucene oss java search
football got more popular because we mixed football and politics...
bursty, dirurnal, CDF changes slowly.
Dick Site person from google
"hand instrument system"
toubles with "schematics" and "instrument"? :/

hardware signals, values or counters.
"there we go, all the things I just said (slides)" dont need an instrument code,or have inturrupt... shared thread, same process- read aout of shared locations. observe global state from othe rcode. while true... read LLC misses, ccles
do the processing on it later, offline. can control through cache partitioning meachansisms, control memory.
local state with SMT hardware.
problem: samples are not atomic.
giving stickers to people you like (mi) lol. Louie and John and Apax chat.... Bill, Pivotal
"do we know this is perfect yet? no of course not, but its look  lot clother to groupond truth"
sample with shim at 10 MHz - really figure it out
overheads from the same core. overhead from another core, ...
SHIM signals-
mi TODO send Suya feedback from 4th friday talk?
mii-  mi- I miss having a little moleskin notebook with me at conferences?
notess from notary- mi- November first payment (thats how long it takes to do paperwork), zero mortgage insurance, rock climbingin st louis
longest 200 reuests. queueing at worker, vs CPU work...
sitting in fancy opera seats
because they didnt get me the slides in time
keep track of load, to know reissue budget
what is reissuing?
because I promised you I would show you lots of stuff about lucene
DVFS faster on the tail
on your phone but not in servers yet- asymmetric multicore.
sacrifice average to imrpove teh tail- ^
best of all worlds, green line, can we?
mi- chelsea :)
Cosmin will talk to Jasmine! WoooO! omg yas
mi- cosmin- "linda you always know all the best peole:" :)
based on numbers of requests in the system, hoe many to parallelise- shortens execution time, reduces chance of queueing in he future.
21% fewer servers  or educe tail latency and engey consumed by 28% - and that was judicous parallelism
migrate early under load? mograte oldest first
adaptive slow to fast network
if we get crowded on the litle cores, we hve the oldest migrate first to the biggest core. the opposite of real life
basic controller design off the shelf, model space of the linerar controller... model piecewise...
Pegasusu was state of the art from google and stanford, all core freueuences for load, at low load, slow all the cores, then increase speeed of all cores together.
vs per core appraoches, EETL energy efficient with tatget tail latency
mi fail talking to mindy about the guy we interviewed and couldnt hire...
way over my head
assymetric multicore, what id DVFS? EETL_AMP?

--- talk 2: redux at the new york times
despite being surrounded in teh vast majority by men and the usual rappery of being given precedence at doors (unwanted) and not in hallways (wanted) and other similar, I am more comfortable at strangeloop than at uptime or monitorama... mabe because it is enough my areana that I am confident, maybe that I know many people here.
redux channel on slack, slides are there (internet is not working fo rme right now)
JC, english version... monterey mexicao :)
opera singer and producer, wine sommlier
casual mention of triggers :) love the full name introduction with origin... YES (bings to mind for me- "immigrants- we get the job done"
loves the Glow tv s)how
internal VC model, pitch every few months , stressful! (mi: ...but I like it - keeps away deadwieght, if applied non-oopsly)
1010 of unidirectional data flow, redux 1010 :/
people pimping their talks in conference slack
"Fixed with makeshift electrical tape made out of lint roller sticky paper, "
nice because conf slack is more interactive and useful, many-use app.
slack takes battery... 78% 5 hr remaining with only sublime, no wifi
this.props vs this.state "if youre using redux all the way, dont use this.state!"
ugh redux 101 but yay it exists, I do like this model
conferences are like a vacation but just hard enough to be fun
when in doubt, lurk he main stage
and the netflix booth :)
yep reducers are great
actually I'm glad im here,it  helps me know what I know.
can find usages of case string in reducers, makes them nice to find
read redux source, im ready?
"and actually this is all i knew when I ghipped watching for the first times"
to watch later: I'm talking at @strangeloop_stl after the keynote about Policy as Code
diagram of their app, cool
"so that's no bueno"
multiple containers- when adding functionalitu incolves many files.
non primary to app- ads-
and code that s essential- cards everywhere
tradeoff: access to state vs pure components
not container per app? weird?
mi- if I cant go to brasil, I want a sourth america vacation anyway... maybe Quito?
lunch- charge/ 3rd floor... netflix!
'reselect' library
composeable selectors...
selector : const fooSelector = (state) => this.stae.foo
change the order of the selectors- from changeless often to change morst often
"I have my own definition of business logic- it's- the things that people tell you to add to your app. Nonessential to the user for an optimial experience of the product."
avoid using app internal stte. dont want componetnt to behave differently based on...
stae.app.isppOnClient (server vs non server) ????
advertising diff url call based on mobile vs desktop .hard for me- because its all one webpage. analytics- not responsive techniques- because analytics- cant just hide using css- double count, thats not good (charges more)
only render ad when you know window size, state.app.windowSizeOnMount - cool
"impure top component"
"btw this is an epiphany I had yesterday" ugh sign of bad / unprepared speaker
a sign of age, being annnoyed by everyhing- part knowledge, part impatience
onMount redux
update url based on search tag- middleware
middleayre= between action and reducer- composer, chan have chain, useful for implementing side effects.
when click tag, take it through redux...
mi- everything is everyday if you do it everyday maybe
onboarding for first-click
conferences, should travel with power splitter oops
dig out big splitter for Peacock downstairs
takeaway: always compartmentalize your impure stuff, so everywhere else in the app is well behaved
refactored thw way they save and store save
he seems really exicted that they have finaley caught up witht he 60s
@norsemelon on twitter

---
talk 3- writing git in ruby (before lunch)
ran into Melanie from USDS, knows Jared Hatch from NY, was commenting on how big this is, she is speaking here...
file systems arent build to have tooo many files in one folder
this will be a good talk for developers to watch on viode
Marianne Belotti is the USDS speaker
hash thecompressed or uncompressed files? compressed- is nice, never unhash... uncompressed- defencds against compression algo changes
permissions name content - enough to store directory.
should we include permissions? not the same owner between 2 systems, maybe not the same groups, except executable bit.
a tak about cool stuff yes this is good
hackathon would be good also
what separtors to use? space of \0 null byte- which one? will separator ever occur in text? filename has no null byte. dont use too many null bytes in things that might be printed later. (why?) so many languages use null byte to indicate end of string... use space...
[utting null byte and sha together is dangerous, sha could have null byte in it, but ]
how was this recorded, this is great
tree command
"if I wenre vesion controlling our version directory- which is a fantastic idea- ha ha, its not"
tree structure, to mirror how dirs actually are...


museum hackathon talk, yes I got here! qith a pug detour :) :)
API is still running!
experimenal API...
sold out, 11 projects
attrition is ok
5 teams to final round
some people made it to final round
doubled prise money!!
philadelphia museum of art
#hackthemuseum
my day went from nervewracking to very woth it
devhosot
"hackathon.io was not used agin, haha" ??
judged remotely- had to submit a 3 min vieo also
11 projects, peoples choice award, voting handled through wishbone(??)
version control: judge criteia: innovation, deasible, innovation
wish
artingo
deramscapes
bines
gallery answer question, colored in your color, capture flag, territory game for entire museum, didint even make top 5 omg
time bandit
trying tos how a video
time bandidt video, aboslute favorites, descprion- none of the team knew each other :) :) great about hackathongs
this talk makes me want tog go to hackathons

"this cruiseship can FLY" yass
winners
Winners choice- unlock 3D versions of images, turned painting style into diff environments, mocking it around the great hall, rending in jungle. ome!
Vibes: clue guessing- contribute clues, if no one guessed, you got 0 points, trying to get points in the middle!
illustrated connection between tech and art, mentoring college students team
gamedec mentors, fantastic
their ideas wee beyond what we could get from a survey0 no one says on a survey time traceling VR bandit game
zoom out.... space in slides! satrun, Cassini picture, looking back at earth. thats us.can you see apps from cassini. does aything matter. I would argue that it does.
I get teary here lol
the inertia and disance, literally creating meaning.
"vision and hope, it matters. I practiced this."
and I will quote carl sagan, because im a nerd and I want to *sniffle sniffle*
Lito Nicolai’s Rewriting History talk will be available on his website learnto.computer
omg stickers yay yes
you are welcome to not stick them to museum objects


-- Lunch: not veg other than vegan, happens I guess
hugged Kozak, people on stairs, ran into Boyle TWer :)
low on battery power, gotta stop at the quiet lounge at some point
some mildly unpleasant interactions with venue staff
saw Vlad in the distance lol
doximity, platinum sponsor, saw them ins the disance
some guy climbed over me twice ugh, I hope it was as unpleasant for him as it was for me. This is why the main floor of the hall is a meh place to be.
I could be coding right now, ut might kill my laptop batery...
tech difficulties with steno setup.
Dude michael, de slackified.
Yon and Garrett, web auth.
passportjs, node
password-local, must provide callback
database password, plaintext eek. should not be an option.
salted hash, makes comparison harder. adobe passowrd leak.
anonnews "everything anonymous:
scotthelme.co/the-adbe-halk
leak continaed password hint plaintext
fli4h.ch
"same as gmail" passsword hint sigh
xkcd crossword pzzzle comment
brute-force a single encryption key, descruption 150M passowrds- and you have hints, so you can check!
(secure) session management (garrett)
book- twitter and tear Gas
sercer-side sessions, session identifier (django by default)
"stateless" sends all data- eg Flask
"cookies arent the greatest" same orgin policy in browser
flags: httponly, secure (per browser..." no tls https connection... persisted onclient, using local storeage in browser. vulnerableto xss, but CSP can help content security policy- access control for browser.... TWer talk on this would begood
this talk shoul dne watched  TWers, can do conf talk lunch
"
MAC message aithentication code, serialize session data, MAC tag
hardt o gnerate valid without key
sessions signed, not encrpted... also problem with JWTs....
user should not have some of the session data... like "winning number for lottery" lol for online games etc
- swap speaker- compare mac tags
time to run varies.... == string compare oops
vuln in early letsEncrypt, she found it, time variation in no mismatch.
mi- I should
pdfs.semanticscholar.org
practical over network yep
constant time comparison. doing extra work on purpose. use xor
node crypto.timingSafeEqual
timing as a
Brad Hill nccgroup.trust
high level languages- code looks constant time, but compiler optimizes it. oops. gotta actually test I guess. blind the timing channel, add a random ish func
HMAC node cryoto api, why to do this. even slower!
garritt- beyond passowrds. "the yo dawg of-"
build in leak-detecting password comparator into web auth library?
how ot protect users wven when twe know that they fallible humans who dont always make right decisions?

ss7 routing protocol, drain bitcoin
kinda weird that trumps account hasnt been hacked yet
hmac or authy, google auth.
always sends you an SMS- twitter- oops.."if anyone here works at twitter- maybe take a look at thts"
mi- would be nice to fo a 2fa survey of diff public accounts...
there sa website for seeing who has 2factor auth... Simple bank I teeted at...
w3c u2f fido certified, really cool standard, industry group called fido, reworked in open group web auth spec...
todo TW writeup of STL attendees? Email everyone, were you these? embed buttons? facv talk?TW coordination fail :/
TLS channel ID,
even if valid TLS cert, cant spoof channelid...
still easy UX is the plan. need a dedicated thing...
aapotion...
github/hillbrad/u2freviews
yubikey with NFC report, apple is not availabe to 3rd party apps. WIP iOS
https://github.com/github/softu2f macos eychain, easy to setup
firefox nightly last week native support for u2f, stable release in 6 weeks, then80% worldwide...
websites....
http://www.dongleauth.info/
- speaker swap: passwod-less login systems
public service conf talks
pewinternet.org
5% of americans use password manager? Seems high
slack magic links
email address inbox is single point of failure
starttls orrorunistic encryption protocol
transparencysupport.google.com/sefer-email/overview
alaska airlines un


-- Netflix antics
Mark Larsen from Braintree :)
functional vs unit tests.... annotation...
cold start service, restart, outage...
john gall- complex systems exhibit unexpected bheaviou- peadiatrician...
Sydney Dekker, safety science researcher, licensced pilot, how systems get int unsafe states.
braintree still getting thoughtworks people "glad to help" i said lol
light jeans, red shirt, lol
service becomes latent
20-30 braintree popele here
retry storm...
nice slide labeling
system fails safe...
gray failure paper by HotOS, ryan Huang,
Guo Zhenyu failure recovery, cure worse than disease
users think something is wrong, but system doesn tknow what- grey failures
1200 engineers...
harvard is a hedge fund with a PR firm called university ad tax free status lol
Cockroft, interesting and unexpected byproduct, also streams movies.
talking about big company outages igets attenting!
A/B service went down... log messages... kafka... thread takes a lock, also application threads... lock contention,throttled.
logging took down prod
aws ebs outage 2012 elastic block storage, us east 1... memory leak in monitor health sstem
mitigation...
... root causes are nonsense?
willing to brag oneself because youve seen so many others do it now with so little cause only humble after value signaling
"drift into failure:
we cant model our systems well right now
alvaro: fault tolerance isnt composable - ie cant put two together
met a DBA who wants to work at TW
paper- looked at formally proven systems, still found bugs
formally verified operating system?
"interaces are dangerous, thats why we dont only rely onunit tests" omg yes, so goood
"this not about tsoftware engineers! this is about eing a human being!"
decrementalism- failures happen slowly, incrementally. when is it ok to push to prod? canary deploymens... create a smaller cluster...
canary probably ok, looked harmless, flaky canary...
tweet from @sadoperator
"super unfair to the eng involved" was thok, the bug was... from before! hadnt been noiced, only happened when change in traffic patterns...
failure was real, but not caused by the code... then there as an issue...

Diane Vaughan- normalization of devience... where over time, it the org gets used to a thing...
this is why new people come in and improve things- theyre not used to it yet!!
xkcd about bicycles evolution awesome yes
Netflix EVCache, in memory volatile cache, nice slides... urls fails, playback has a fallback... one day, traffic spike- not common for Netflix- very predictable! saturted network interface cards on EV cache clusters... "became latent" cache miss, default to treat errors as misses- client will retry!
vaughan: structural secrecy: you need to know, in order to have access... ugh now I want to work there...
"make the wrong thing harder" chaos monkey killed itself. successful system design "doesnt cause many outages anymore..."
omg this is so hpmor
fuzz testing systems structure in prod -mi
find vulnerabilities before they become outages
mi- touch typing gets a lot better than otherwise
drug testing analogy, full external validity- prod!
Netflix "broadcast" function would be interesting?
sorta
Vizcerak. noncritical services. bookmark services. user has to start from beginning, is ok.
tool Chap, chaos automation platform...
expeiment diagram...
people behavior differences detection
http://principlesofchaos.org/
SPS starts per second... very predictable!
experiment today doesnt mean willl still work tomorrow
minimize blast radius, small fraction traffic... auto-stop functionality
chaos experiments can find pathologies
humans making resoable decisions can cause systems to get into unsafe states YES THIS YES

--stripe talk black box AI understanding
dog grooming geometric shapes
sripe develops tools for people working with money
stripe pitch?
card testing on donation sites
fraud detection is so coo. stripe is great.
stripe branded slides
fraud adapts constantyl, spending all your time in the dashboard being suspicioun of everything all the time, xkcd yay
explanation for every blocked charge...
model outperform matrix
binaryclassifier,
does this have aything to do with the notify your credit cad company about travel? where is that used?
every charge should find a slot in the tree
ML to generate rules! But auto-change...
"alll you need to do to wurn a decision tree into a set of rules is jut- pick a thresshold..."
decision tree means you can simulate the algorithm yourlsef, look inside teh lack box...
trust- if you block things that seem good to the user, then... they wont trust you
shallow trees are not very accurate, two decisions are not enough. deep trees are not very explainable.
50 or 100 or 1k predicates long is too much for a user... to see and trust. overfit to data.
80% chance that strip has seen a card, even if you just launched a biz
use multi ventor data- this user is unlikely to make this kind of transaction at this time fmi- argh, the escrow lady called me, argh why
other talk https://github.com/mvolkmann/talks
ineffieent and not good but a beautiful story...
Explanation generated from random forest model, has some truth, it is true... is it the reason? Well...
post-hoc explanations, give up on any idea, treat as a black box, just forgeddabout it, train another model that tries to explain.
its easier to justofy predictions
:my mom" what are the chances... after the fact, teh chance is 100% and you can come up with any story. lower effrot.
Ryan Turner paper- Model explanation system- "I was totally bowled over" inspired byt eh paper
key her- explain single
use hindsight! yes!
TWers here: ryan, vlad, Boyce, kozak, mindy, linda, 2 others with Boyle, other like Jared, Jared...
prediction, thresshold, explanation. feature, operator, constant (unique card ip address last 24 hours)
"most people only have patience for six predicates"
strip more information, end up with "unusally large number"
In what sense is this an exlpanation?
should only trust this if you trust that soeone is workign hard to make the model accurate and fair
visualization map to take it over the decision boundary!
homes.cs.washington.edu/~marcotcr/lime
training data, wolves in snow, huskies on couches- example tess you everything!!
atheism vs christian list
overfitted heavily n training set...
AI rationalization
https://homes.cs.washington.edu/~marcotcr/blog/lime/
youre not going to put an ape behind the wheel! when you can have an algorithm! If its the right algorithm!
EU right to explanation:
analogy with 4yearolds explanations...
"we dont know how to encode everythign we care about in teh goals of the model"
"fairness accountability and transparency in machine learning"
explanations let us see oucomes, interrogating blackbox models, can figure out
formalize our ethics! In a way weve never really had to....
lack box models are very explainable and dont trust anyone who tells you otherwise
@sritchie


- USDS tak by @bellmar
TIC Trusted
Brodie pfrom Stripe security
Aaron was EPA lawyer, need a lawyer- illegal diagnose technical issues
small groups of lwyers show up and swashbuckle

have been trying to fix it desperately for years!!
2007 rule, cased TIC, first iphone, internet very different, skeptical about software as a service, dont put anythign critical on it... the problem is- decade later, how do you define perimiter seurity... doesnt workt hat way??
Deal by finessing the definition of internal/external to an insane degree. what does sensiive data mean??
FISMA- FedRAMP "difficult to grok"
agency specific laws Censsus title 13, IRS title 26
Govcloud west coast, got data center east coast.
amazon GovCloud, specific data center (oh no, only one data center? What about failover??)
staffed 100% by american citizens, fewer products :/
TIC is false sense of security and single point of failure
...
zero trust networks- everything needs individual TLS. strict access control, device registration.
Relies on PKI- someting the gov has struggled with.
Homeland Security Presidential Directive 12, government wide.. 2011: GAO Government Accountability Office
No badges compatible
DoD escort instead of badge, only badge if 6months O.o
amazon wont build them a https://en.wikipedia.org/wiki/Sensitive_Compartmented_Information_Facility so cant make govcloud a TIF
TIC reference architecture, says must be a SCIF 30 min away from management location, which assumed to be data center.
COULD mean a place APIs to manage remotely...
"cant put classified signatures in teh cloud"
Good Natured Govie ??
Einstein- intrusion detection sfwtware maintained by DHS, Does not block - web...
situational awareness and automate data collection...
"the Einstein system of tomrrow" eeeek
most important- refocus conversation, !!!
mi - I am already super looking forward to napssss
negotiations
Mirror packets from cloud to einstein?? :)
mirror from switches? Amazon no. SPAN?TAP
amazon, gateway routers... amazon specific, not other cloud offerings... VM... iptables (adds lots of overhead)
load balancer, already all traffic run through, VTIC as load balancer?
Compliance vs Security
incremental security: can the government ever get to zero-trust? They are the future! Can we move that way?
Adding value while moving towards value, not just laying base layers without use until network completion...
current vs future needs from wishlist- takes careful communication. 5 years, 100s of engineers, thats how intrustion detection works!! well, its hard because... hard to think about problem?
People who are good at writing policy and people who have technical expertise are rately the same people and have trouble identifiying each other
OAI report
Office of American Innovation IT Modernization Report, acting Federal CIO
https://www.cio.gov/about/members-and-leadership/margie-graves/
You have no idea how hard questions are to answer
Officially 24 CFO ACT agencies. breaking down, little ones, 100 to 400... fun conversations about... Freddie Mac and Fannnie Mae, private secotr government straddle, "public" commentary" but really who does is- companies and lobbyists, who dont write short comments I might add
Googles public comment
Dude in audience try 2 pages of google ad, 2 pages on policy, all the comments are like that

---
lightinign talks
Human Rictions
Julia, Dmitry's gf yay!
accenture, typescript, anchor4
chatting with USDS speaker
microsoft
Julia- Wadler's talk, 30yr lang in CS to math...
Surrounded by smart people yay, good feels, overwhelmed feels.
USDS https://github.com/GSA/modernization/issues/80
USDS https://github.com/GSA/modernization/issues
lint
sublime to visual studio
"Anyone great attend ace cyber security boot camp?"
http://www.stlpieces.com/
"Hamlet is great and all, but let's go back to twitter"
slack, google (7th official language), reddit!!!
TODO TW typescript?? Convert??
#MSBuild conferece, C# and .NET creator, EdEx course start tomorrow typescriptlang.org/play http://www.typescriptlang.org/
slides to speakerdeck
-- lightning 2
Programming shibboleths.
Thursday Bram,
"We all have senses of humor, especially about timezones"
time honored batttles, still fighting, mems, all the way down.
injokes
diversityyyy
how do you teach teh joke "everybody gets a chance to laugh"
"HTimezones horror show that will take the rest of your life"

Nick, lightning talks
@nickvanw eng manager at github, graphql
typed, introspective, "version free"
"rest is cool but we needed more"
schemachange, drives data setup, going all in, graph first
peole in lambdaconf shirts make me sad I guess but yay lambdas but sad about that conference.
rate imiting and caching, graphql is still working on how to do those...
Pam, coworker "vomits code" three different mispellings in three diff ways

IoT without cloud talk
asyncio apahe 2.0 hst by sef, track on map, home assistant, stae of house,
https://github.com/strangeloop/StrangeLoop2017/wiki/Lightning-Talks-Sign-up
http://heather.miller.am/teaching/cs7680/
hour before sunsuet, turn on light...
besides yaml... :)

Lito- Voldemort effect!
harry potter
hermione competent!
nature of power...
we dismiss tech things because we dont understand thhem.... "not built here"
"i dont know -> no one knows"
"Ideas are bigger on the inside. there's more to it- history, and reasons"
knowig a thing's name gives you power of it
"being dismissive of a thing in tech... makes me certain that I don't understand it!"

"Why not haskell?" Rebecca!
mi m f runs local meetup, goes to other meetups :)
mi- jared at dinner... "Michelle doesnt want to" not very consultant O.o
PIP unknown, MJ said, Durling...
sometimes the pitch is bad- haskell
could I interest you in some monoids or applicitive functors
help solve their current problems, not the ones we think they have
javascript jokes like php kkes
abelian monoid
twilio tour was cool, should do
the wrong place to start- abelian monad
"getting stuff done should come before learning category theory"
like feeling superior, aim for that. but more often, very excited, forget what it was like before they knew, forget which parts are jargon, forget which parts are shibolleths <3

wayne- striking out on our own
work for yourself, make a living, prepare for...
more control of destiny, more money, work less,
omg yes they made an announcement because I whinged about the guy with the photographs, "I don't know why they told me to say that" lol
dont solve problem using language, just solve problem , ... dev in other places charge less, is fact, dont compete with that. dont be a commodity.
book: strategy and tactics of pricing (2014)
developers. specializing in vertical is huge.
relationships and trust is money valuable.
referrals- partially transitive trust
credentials. track record. publications, presentatons, podcasts
"velocity trust table" autonomy spectrum
mi- callisto!!
toptal, 10x manageent
hourly == bad
same thing faster, get paid less (or lie)
try pricing by: weekly, fixed-fee, value-based
"A lot of them are cheesy business books and some of them do reference fax machines"
@wycdd

Jude from Fog Creek
@blinkymach12
finding systemic issues your dev practice, via easily observible events
canary "small creature with high metabolism"
cats in japan for fish
honeybees detecting pollution
OMG YES THIS get the slides!!
test encoding errors suggest script injection vulnerbilities
om gyes this
CR https://github.com/coderanger/talk-ideas/blob/master/monomyth.md
https://twitter.com/blinkymach12
SRE hat?

Dee Dee Lavender
https://twitter.com/@ddlavinder
introverts
synergy
"they have a team exercise called subacrtic survivial situation"
"introverts are slow to speak and tend to be deeper thinkers"
extroverts can be higher volume...
https://jigsaw.thoughtworks.net/consultants/17662 TWer with us
creative ways to level playing field
"dont yuck my yum" yass
"that is my cat tax"!

practical privacy protection! firebase google SF @eob
https://twitter.com/eob
GDPR europe! May 2018
any users in europe? applies to you :)
need a better conference not taking machine? ipad with keyboard?
delete user data when account deleted (workaround- dont require account, track data anyway)
wipeout and takeout
mi- kiddom, tw, netflix goog, square
so far I have attended every talk slot including lightning talks, missed 8-830 steno demo / open spaces tho
harder in schemaless datebase to find a users data
denomalization, including backupp copies! wipeout pipieline, O(user data) is the best you can do...
schealess db schea is implicit in schema code
"privacy expert visiting us- she created" SHE yass
Holly coach?
AuthZ system
previously talk auth0 shoutout during auth talk yass love it
mi- auth0, slack, stripe
https://leanpub.com/queerprivacy
Dan Zhang firebase cleanup example

"whats your story" square-root.com
under left eye twitch
gotta expense the hotel - mi
stories...
want to do writing
lj app?

Memex!
@hyfen (?)
the human brain files by association! memx ad
never built, jetpack?? lol
grade 5 journal info packrat, msn chatogs!
wants to search hstory, is difficult
side project, way into the sunken cost fallacy
even tsourcing
state is only from transaction log!
I guess this is why people talk at confs, what coul dI do here?
triplestore, subject predicate, object, time. verb:liked from instagram, personal iftt ish history
verb: commanded provider:bash vobject:gipsicle see all flags, timestamps! can see nearby temporal stackoverflow articles. can graph! messaging history. or as graph... visualization, places...
find link, except recieved while in st louid museum!! omg
13 killion relationships among daata, ebooks...
journaling is awesome
@hyfen hyfen.net/memex has newsletter TODO signup!

day 3
videos channel https://www.youtube.com/c/StrangeLoopConf
photos https://www.flickr.com/photos/strangeloop2017/albums

@nayafia Rebuilding the Cathedral
"I wrote this talk for me as much as I did it for you" im not an oss developer, just someone interested in how it is... didnt have a background, couldnt look to hhow things have always been..
"could feel resignation set in, givng automatic answers instead of asking questions"
Maintainers are the "keystone species" of software development
one maintainer per little project is 93% of npm, 2015 analysis, less than 3% of widely-used projects are "bazaars"
10-250 conributors
ratio of users to maintainers are getting worse
"who pays the staff who organize the marathon?"
"who pays the people who run the food kitchen?" volunteers are not paid staff
volunteers are not maintainers waiting to happen.
I am not excited by this keynote, I didnt think I was tired but maybe I am
this talk does make me want to code though so that's good
sustainability in open source
How do we support maintainers- indirect, independence, infrastructure. dedicated employer time
Behance OSS Babel
https://opensourcefriday.com/
https://opensource.guide/how-to-contribute/#finding-a-project-to-contribute-to
Evan for vue.js
Patreon?
https://rubytogether.org/
mi- cczona, event at TW?
https://github.com/nayafia/lemonade-stand
treat OSS as digital infrastructure. its a public good, it shoul dbe supported. bridges and freeways are not a hobby.
Parnell Treatise on Roads "exposed to insult and ill usage" https://books.google.com/books?id=x501AAAAMAAJ&pg=PA294&lpg=PA294&dq=Parnell+Treatise+on+Roads+%22insult+and+ill+usage%22&source=bl&ots=Q5kFPjCBAN&sig=0CLukdaLrc6A-W8_NqPGcyhiVC8&hl=en&sa=X&ved=0ahUKEwiOq_DZj83WAhXrjlQKHYN0Ag4Q6AEIKDAA#v=onepage&q=Parnell%20Treatise%20on%20Roads%20%22insult%20and%20ill%20usage%22&f=false
mi- todo - compwron blog upgrade/improve
https://rubytogether.org/
"You woulnt't want one nation state or company dictating what a piece of important OSS would be like"
dont know who uses projects unless companies say so...
quantifying value of open source
I want to be a maintainer... the frustrations of tending the garden sound enjoyable for me as I am now.
"Think beyond palliative care and coping strategoies for maintainers"
the live captioner must be incredibly literate, "pallitive care" and weird tech terms etc etc, whitecoat captioning.

--charity majors operations @mipsytipsy
"the only good diff is a red diff"
"I will write code if I have to, but code causes problems and I don't like problems"
@grepory "monitoring is dead"
"there are people still in this room running nagios, fruit salad of doom"
"I love strace more than life itself"

"our tools are fnudalemtally designed to answer known unknowns"
observability, trm from control theory, unknown-unknowns
maybe next time I should goto talks that I have never heard of the speaker or topic
the diff between what I want to know and
mi- too ego to dude from clareent
monitoring is biased towward outages
cant monitor aeverything, can only monitor for known failures
understandable-
messing with her hair
encompasses, how you answer wuestions
complexity: inherent or accidental, arises out of software x architecture x human process. it is annoyingly subjective.
architecture is about putting the complexity in the places where you want it instead of the places where you dont want it
Halstead volume- where the information is, in the source
"remember back when there way- "the database""
very condescending to say "write boring code" to someone- you dont understand the problem space
LAMP vs Parse infrastructure, requests could lopp back in multiple times,
"We had built  system which was findamentally debuggable byt the time we got acquired"
"would this work for the power grid?"
"the health of the system moreor less accurately represents the experience of the indivial user:"
"I fucking hate dashboars:"
some relly great slides that I photographes with problems that are arcane and amazing, can I have a book full of arcane problems
Ran into Lorien at the Netflix booth!
Josh from Netflix LA
"the hardest problem is often finding which component/s to debug or trace"
up and down may not be meaningful- user experience is.
"do I want to get paged about twenty fucking thousand things"
"I dont want to get aged for most things, twenty fucking thousand things, or else all my engineers will uit and i will too"
start at the edge and work down, instrumentation, internal state from softeare you didnt write too, wrap evey network calll, data call
my little pony theme
""events, not metrics?" "
high cardinatlity data sets work well with metrics- no one has done this yet
"there and entire generation of engineers internalized limiteations of metrics as being limitations of data
hundreds? I dont know what datadog does now
speaker slides as available https://github.com/strangeloop/StrangeLoop2017/tree/master/slides
metrics are cheap, but terribly limites
you can sample, it is amazing some people feel
"I do not recommend that you sample your billing system" should vs must
dont let engineres act like its not sampled. every request generates many events.
average api request generated 50 event, at facebook,hundreds
sample dynamically, not all data should have the same type
keep all of the 50X, let the rate limiteer slice off the top of the mountain
is this someting that a guy could do?
Parse is down, logging endpoint, 61 seconds, 5x both tables scan, deployed there... life changing. SCUBA at facebook was amazing, wifi EDGE server, shopping cart ID
"cardinality will save you" we did have to write our own storage engine, Ive spent my careeer telling people to not write databases, and I did not do it. It's... a storage engine"
"With user-defined controls comes great chaos" humans inject chaos
"structure your data! It's almost 2018!"
dashboards are artifacts of past failures.
ending keynote https://docs.google.com/presentation/d/e/2PACX-1vR3Mr4aYyDVpk4C2Kz9m0Qgm0VwA3-SXJXG6erJrlZiRAFBF4brWaI3L5zO6TNzfIoL4mDl79je3OG1/pub?start=true&loop=true&delayms=9000&slide=id.g2782bb7280_0_13
dashboard blindless- doesnt start with a question
explorative iteraticve interrogations
aggregation is a one-way trip
every api request should be locatable
mi- def bragged too much
read time aggregation, going to go home and build tools, b
"this is not a sales pitch, this is a cry for help" build better monitoring tools
Nines dont matter if users arent happy
"thik about the natioal electric grid. you're not going to bring up a stging copy of that. most of the time Ive spent in staging has beenw asted. it drifts"
"im the proud author of our capture and replay software, for yesterdays traffic, cant predict tomorrows traffic,"
tooling for production in a place where people are underinvesting.
"it should feel like a big deal to you when you remember how many interns they have, deploy internal, 1 percent, 5, then external, "
people are so scared to break production
force amplifiers (dbas etc) for developers
conferences help me see the wider world
the lifecycle of code after you hit ship
dont hire engineers who wont
as a group we are not known for our work life balance
it doesnt have to be awful
watching it run in production is your fcking job, if you dont want ch it when its normal, you wont know what abnormal looks like
bring my ego back down to size and make me willing to look at the world
what you win is drastically fewer paging alerts

http://www.clearent.com/
japanese dad pun
TW camera covers
@jon_moore
god of the gaps - religion that fills in only the gaps in science?
addicted by autohr for talks aslso


rate limiting
@Jon_meoore
"40 blistering minutes of queing theory
microservices are like taco trucks
big food truck
API management gateway,
cosulting-tired
"capacity mnagement: one cleitn shouldnt impact everyone.
srelative rate limiting? Not regular rate limiting? "
dudue look suspicitouly like sarnacke
x=nr little's law
jon moore's second law- if opp to ally littles law
live demo ish, grafana dashoard....
CLIENT SIDE, FRFANA, I SHOULD RUN ONE FOR PAIRSEE, SEE WHAT HAPPENS, DEVOPS TERRAFORM, WHAT IS.
SO NOW LETS HAVE A PROBLEM!
1latency gets doubled lol
tshirt view #wholevacation
shed_load = false origin server, not self protective
flutter.io Written in Dart under the hood. Hot reload for mobile, iOS/Android
latency climbing over time, want better dashboards, slunk skills, ?
things to do with SNC splunk loging,amusement park analogy
queue forms, britian, lol, line
snc calculate money throughput
menu calculate calls from bff
systems are more fun
conference serving its purpose, makingme willing to be a software engineer

blue/green hair gy ahead of me yasss
maybe STL flight fix? CR
Is Josh here somewhere?
seriously, my blog needs to happen
queue overflow?
FasterPaxosCommit is the name of the code of the gy to the right of me
so if I divide infinityby three and a half...
number of requests present in the system, response time, "I'm not sure what x should be here, but...: infinity equals infinity
I want to play the twilio game... are there any talks ther that I should go to? bus out front
many services wont shed load and protect themselves
maybe I should I learn to type
aratelimit doesnt pushback at client when origin has issues
quota = 5 concurrent request, not requests per second
coworking spaces tour? TW ask for? acting out? Ibrahim? Gotta plan oklahoma trip, Brasil??
your tte limiting depends on load in system, isnt that leaking data/ dangerous?
auth talk slides https://docs.google.com/presentation/d/e/2PACX-1vRQpAoiitWbkHg5hgtp2b7y5kgEEP7e1Z5aOcOB7c8QzEepCpDrotc-DN-WgzWKMpfCRXPQFaT6pHuL/pub?start=false&loop=false&delayms=60000&slide=id.g2776a6c5c7_2_284
Theron Rabe from @Zymergen talks about how Codon, a DSL for specifying large collections of genome designs. Really awesome! #strangeloop
throughput != capacity
https://gist.github.com/ruthienachmany/03f9a9241dfb2b050cbc93e4781472ce  Biomaterials as UI: Designing New User Experiences // Strangeloop Talk // Resources to Learn More
dont push back if there is capacity!
TCP conejection avoidance additive increate, multiplicitive decrease, dropped packets are congestion
?
increase total target concrrency by constant c per unit time

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

where is 3 mile island?
assumed it would always work...
appplyign ideas to your own context....
airline- tombstone mentality - problem that everyone knows and no one fixes it, until someone dies... "pays their life"
"softwares biggest sellling point is its leverage"
aerospace, medicine, energy, natural disasters- gettin gbetter at this. NTSB 140k aviation incidents investigated.
Talks I want to give at TW SF, maybe in Borg... guide to government sites
https://www.disasterassistance.gov/
every airplane part, how many times flown, number of pressurizations- part replaced or rated. software works better after being proven?
probabilistic risk assessment
disk fail vs quorum loss, which components should we focus on?
laguna fire 1970 - miscommunication about who would fix it, two departments interacting became ineffective. ICS
NIMS
2014 911 outage https://apps.fcc.gov/edocs_public/attachmatch/DOC-330012A1.pdf
https://www.fcc.gov/document/april-2014-multistate-911-outage-report
https://www.lexology.com/library/detail.aspx?g=fcd46350-ef0d-42ae-8472-b0d6acc8e2ff
This edition of IT Hiccups of the Week revisits the 911 emergency call system outages that affected all of Washington State and parts of Oregon just before midnight, 9 April 2014. As I wrote at the time, CenturyLink—a telecom provider from Louisiana that is contracted by Washington State and the three affected counties in Oregon to provide 911 communication services—blamed the outages, which lasted several hours each, on a “technical error by a third party vendor.”

CenturyLink gave few details in the aftermath of the outages other than to say that the Washington State and Oregon outages were merely an “uncanny” coincidence, and to send out the standard “sorry for the inconvenience” press release apology. The company estimated that approximately 4,500 emergency calls to 911 call centers went unanswered during the course of the Washington State outage. No details were available regarding the number of failed 911 calls there were during the two-hour Oregon outage, which affected some 16,000 phone customers.


https://spectrum.ieee.org/riskfactor/computing/it/-fcc-chairman-calls-aprils-seven-state-sunny-day-911-outage-terrifying-
https://www.theverge.com/2014/10/3/6414949/911-call-failures-fcc
https://www.washingtonpost.com/news/the-switch/wp/2014/10/20/how-a-dumb-software-glitch-kept-6600-calls-from-getting-to-911/?utm_term=.2efe5322bc91
https://spectrum.ieee.org/riskfactor/computing/it/it-hiccups-of-the-week
https://spectrum.ieee.org/riskfactor/computing/it/it-hiccups-of-the-week-us-state-government-it-system-meltdowns-galore
https://www.fema.gov/pdf/emergency/nims/nimsfaqs.pdf
https://www.fema.gov/national-incident-management-system
https://www.seattle.gov/emergency-management/hazards/infrastructure-failures
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC1299330/
first cehcklist used in airplanes
2 airline merge- which checklist wins
thought automation
lobby tshirt, bus, twilio tshirt,
united flight 173
https://en.wikipedia.org/wiki/United_Airlines_Flight_173
http://lessonslearned.faa.gov/ll_main.cfm?TabID=1&LLID=42
https://en.wikipedia.org/wiki/United_Airlines_Flight_2860
https://en.wikipedia.org/wiki/Eastern_Air_Lines_Flight_401
https://en.wikipedia.org/wiki/Tenerife_airport_disaster
crew resource management- formalization of interactions
https://en.wikipedia.org/wiki/Crew_resource_management
It really annoys me that so many talks are more basic, wherei sthe joy
"never waste a good crisis"
RCAs http://itmgr.org/process-management/root-cause-analysis-rca/
"If you look back in time, all mistakes look like a choice. ...but these things are not clear in the moment [when they happen"
https://software.nasa.gov/software/HQN-11316-1 The NASA Root Cause Analysis Tool (RCAT) has been designed to facilitate the analysis of anomalies, close calls, and accidents and also identify the appropriate corrective actions to prevent recurrence. The software provides an analyst with a quick, easy-to-use, accurate, and repeatable method to perform and document root cause analysis, identify corrective actions, perform trending analysis, and generate usable data for probabilistic risk assessment. All possible causes of accidents-hardware, software, the environment, weather, natural phenomena, external events, human error-can be incorporated into the timeline and fault/causal factor trees. The software features an intuitive logic diagramming capability and uses standard terminology, definitions, and symbols.
https://software.nasa.gov/top20
internal data on near misses...
all pilots can anon report, ASRS issues monthly newsletters https://en.wikipedia.org/wiki/Aviation_Safety_Reporting_System FAA forbidden from prosecuting pilots who submit to ASRS https://asrs.arc.nasa.gov/
https://www.usa.gov/ USA.gov is your online guide to government information and services.
walmart and waffle house
walmart louisiana "do the right ting" ocal responders, supplies, store inaccessible, bulldozer, suppplies to parking lot, broke into pharmacy, en
https://www.dailykos.com/stories/2008/4/3/489440/-
http://www.visajourney.com/forums/topic/119818-real-katrina-hero-wal-mart-study-says/
https://en.wikipedia.org/wiki/Waffle_House_Index
try to be the waffle house of the internet

devsecops talk
terraform, github, yep
met cool persons
http://www.cse.psu.edu/~gxt29/bug/softwarebug.html
https://www.cs.tau.ac.il/~nachumd/horror.html
http://www.cigniti.com/blog/software-failures-2016-testing-prevented/
works for veracode
calculate price per talk?
my TW security talk, refresh and give- dunno what I'm talking about, a survey course
where is chris schuster at?
conference networking ftw
my little moo cards ftw
TODO contact all the people I have cards for
test should have iam policy
"I'm not sold on having a lot of tests for your infrastructure yet" WHY NOT
life dashboard of conferences attended, DO IT:
conf name, conf size (talks attended, people attended (dot size)) exact date, notes link, ticket cost (color), my rating- shape?
bbs
bbc flowlogs from aws
working for chexmark or veracode coul dbe  fun
is phoenix on twitter? TODO check on this
TODO publish smartbra blogpost
TODO book thanksgiving tickets
cloudtrail logs
http://www.snopes.com/fraud/phishing/hotel.asp
Cloud Custodian by capital one, OSS python https://github.com/capitalone/cloud-custodian

https://www.hashicorp.com/sentinel/
https://github.com/awslabs/aws-security-benchmark
https://www.thestrangeloop.com/2017/policy-as-code-with-sentinel-language.html
https://medium.com/netflix-techblog/introducing-aardvark-and-repokid-53b081bf3a7e
https://github.com/Netflix-Skunkworks/aardvark
https://github.com/Netflix/repokid
"all this work to avoid creating jira tickets"


Key to the City: Writing Code to Induce Social Change
Jurnell Cockhren https://www.thestrangeloop.com/2017/key-to-the-city-writing-code-to-induce-social-change.html
inequality- "wprks on my machine vs "user issue!" for govt"
"We know that this problem exists- we are either a victim of it, or a witness to it"
"Our blockers [when fixing the bug of inequality] include the emotions of the decision makers
I'm really encouraged by how many people in these audience are not diverse and are here listening
http://labs.comcast.com/registration-now-open-for-software-as-craft-conference-2017
nschrenk [2:54 PM]
@U6ZLC8NP9: I'll copy my earlier post here about an event happening tonight:

If anyone is looking for something to do after the conference on Saturday night, local hackerspace Arch Reactor is hosting an event from 7pm - 10pm where members are showing off things they've made. Arch Reactor is a 5 minute drive from Peabody Opera House.
https://archreactor.org/show-me-show-off
There's not much info about what will be happening on that event page, but a few things I know will be there are a small "cardboard robot" battle arena and I'll be making ice cream with liquid nitrogen.
All are welcome. There will be some pizza/sandwiches/soda/beer, but supplies may run out depending on attendance. First come, first served. (edited)
soack for conference, working well. some people
function signature of inequalty?
modeling complex systems in code sounds great
drawing ines, boundaries,
math on screen
axiom of choice - In mathematics, the axiom of choice, or AC, is an axiom of set theory equivalent to the statement that the Cartesian product of a collection of non-empty sets is non-empty. It states that for every indexed family of nonempty sets there exists an indexed family of elements such that for every .
http://sophicware.com/












































































