---
layout: post
title: "TLA+ Conf and Strangeloop 2019"
tags:
 - conf
---

No code of conduct announcemnt by markus the organizer of TLA+ conf- "let's skip housekeeping and do it before lunch"

All TLA+ slides are at [conf.tlapl.us/program](http://conf.tlapl.us/program/)

## 	Keynote: TLA+ at Microsoft: 16 Years in Production	David Langworthy 
My rating: 5/5 (very much worth going to, I wish there had been more of it!)
definitive book specifying systems by leslie lamport, who joined microsoft about that time
presenter reminds me of a great tech lead I had once
"and the wheels turnd and they spit out me"
WS-transaction protocol, two phase commit protool, BEA, IBM, Microsoft collaborated on spec
"fussy protocol, getting it right is tricky"
completion protocol issue- when the transaction is finsihing and trying to orget about itseld- found a bug- issue with how it terminated
CACM article on how AWS uses TLA+ https://cacm.acm.org/magazines/2015/4/184701-how-amazon-web-services-uses-formal-methods/abstract
email from Leslie to new-CEO Satya
Satya said go, ok how do we do it? Unclear. So they had a class to teach ppl TLA and see if they could write a spec. Questions: will anyone show up? Satya said so, so chances were good. Question- there are some very deep concepts in TLA+, would the new people be able to *do* anything? Turned out very successful. 
"guy... or gal in some case" lol >.<
next year had the ppl who had done specs, come in and talk about their specs and the impact of the specs on their org. called it "workshop" Keytes by VPs in storage, compute fabric, (other hird one)
Room is pretty full, I'm glafd I got here early
first: Service Fabric ("like Kubernetes but scales up better" Azure runs on it) https://azure.microsoft.com/en-us/services/service-fabric/ The federation subsystem was specced in TLA+ 12 pages+ of spec specifying how machines entered and left rings, how failure was dealt with. fairly unique in that the TLA spec was done *before* the system was developed. It forced them to have a clear definition of what the ssystem as supposed to be

2: Azure Batch, Pool Server system. Manages the create/resize/delete of pools. enforce and maintain batch account quota. trsack persistent data across many operations
Using tla+ for checking data- turns out to find a lot of good errors. 
mi- it is really really cold in here
mi- I wonder if jepsen is a pseudo-TLA-checking system 
pool creation- long process, and failover can happen any time
Psharp is a MSR state runtime similar to TLA+ but at a lower level
TLA+ helped clarify&specify safety and liveness properties 
Psharp specifies p-tree nets https://github.com/p-org/PSharp
very very cool
slides will be published but I am getting pics of some of them- mi- put on imgur and embed?

3: Azure Storage: Paxos ring management "It turns out that you can't have just one paxos" 
A whole rack can go down at once- known failye type- lose power etc. 
Safety violation discovered by TLC- straightforward node replacement was unsafe. XvMaster sends configuration changes, hen blocks, then tells new node to load RSL engine
RSL = https://github.com/Azure/RSL ?
Paxos https://en.wikipedia.org/wiki/Paxos_(computer_science)
network partitiioned during swap - lose committed data. so add and remove are two separete operations, so swap is two operations now. 
"Cheng Huan is a very mature tla+ developer, he has specced a bunch of different systesm. what he learned here was- trust the [paxos]log, not some state that youre holding onto. let the paxos log drive the state of the system"
4. Azure networking, system Ringmaster https://github.com/Azure/RingMaster
runnign late- 5 min left eek :(
used to use a token, switched to a lease model- primary lacks knowledge of lease
5. cosmos db, skipping over 

Using TLA+ with random eng across a huge copany- 
- syntax is not the problem. 
- starting in isolation is difficult- next to mipossible to just pick up the bopok and go write a spec (imo this could be solved weith better guides) 
- TLC: anti runtime. teh job of a runtime is to gab your program and run as long as you can, without errors. TLC runs it as short as possible, with errors! Like a chess tutor- you make some moges and it teaches you what you id wrong. 
- the autho of the TLA+ spec learns a lot by implementing a system! Don't prefer a just-TLA team. You want the eng who really really know the *system* and then they will write the spec and learn the system even better

mi- presenter is wearing an apple watch with a pastel pink band

Q: how to learn? Public google group and github issues (marcus answers them). Other advice: find a buggy. If starting from scratch, watch leslie's videos, wrote the exercises. Then try to write the spec of something you know well. Book by Wayne, "Practical TLA+" https://lamport.azurewebsites.net/video/videos.html

Q: what syntax used at microsoft/ TLA+. Cosmosdb team wrote in pascal
"spec-first is dead... we are agiole. We squeeze it, put it in the box, and ship it. TLA will move you up the learning cycle... whether you want to do it early, or you want to use ti to find a heisenbug, why your checkpoints are deiverging or somethign like that- one of the big advantages- it doesnt have to go thorught that old UML formal system you can write a very quick half pae tla spec of your sustem, just figure out what the oundaries are
do targeted specs, move yourself up the learning curve

Q: on teams using tla+ does everyon knowit? If not, how do you share the info in teh spec w ppl who dont know it?> 
A; if you have a concrete repo, you can take it to anybody and they will get it. Anyone will get the traces, since it gives your the shortest possible path. Uusally theres one person the "sherpa" the expert, then the others read it. I prefer to read teh ascii than the formatted thing- if you're a matehematician, then teh formatted one is better. 

Q: anyone other than leslie at microsoft using the TLAPs solvem prover? ...No. 

### 9:45am Building Hyperscale IoT Services With TLA+	Vaibhav Sharma
My rating: 3/5 (I learned stuff)
They use TLA+ before burinign the sustem weird
TLA is good for systems with many parts which communicate async. (IoT and callbacks) regulr tests cover in-system (not cross-system) operations well. 
axure iot hub allows cross region failuvers, themodel is checked to ensure RPO, RTO garunttees
mesage 
customers want to know when their devices are online/offline. mesages can arrive out of order but we want sequence on them 
scale- milliopns can dis/connect at the same time. so we cant put this in teh critical path. Nothing can happen synchronously
...
components, states
no type system in tla+ but there is a type heck (?)
more comments than actual code
maybe they will share the github repo later
invariant faulre- screenshot- previously shown in animation- this is more nuts and bolts, cool
bugfix: generate sequence numbes in a service. do in-memory (?) checkboipint- backgroun process sends the notiiation. 
I think this solution incrases total system duration but its async so that's ok? 
the colors in this presentation look ill
this specification reminds me of prolog- defining ways that systems can be
more invariants- (invariant = things that should not happen) i.e. sequence number should never go backwards
spnt a week on tla, got optimizations which reduced operational cose by an order of magniude
"it went to productioj, it worked perfectly, no design change after that" where we use tla+ it eliminates late design changes- previously found during stress testing or code reveiew
makes cross-component integrations simpler, stil fail because of naming but never because of wrong design. code reviews use tla specs as refernce, frees up mindspace to focus on code quality
Specs are mosly isolated from each other. 
How do you create specs? using the toolbox. sometimes use commandline to generate a state graph
reference models? not eally now?
handoff spec writer vs architect, ? 
asks for contributing specs into non-standard libraries- baris lower, community effort, everyone is invited

### 30 min coffee break
someone in slack mentioned that https://ragtag.org/what-we-do exists which is cool "
Ragtag is building the future of tech volunteerism. Progressive technologists are eager to jump in and make the change they want to see in the world. At Ragtag, we help them do it responsibly, by helping them understand the work of organizers on the ground, around the country, who have been working in their communities for decades. "
Coffee is out but there's diet coke so yay
Next presenter is a dude who came in on my flight and I saw on the train
Chatted w/ 2 guys at break: 1 hashicorp, 1 12-eng startup for bonds (plumber onds, bridge-building bonds etc)
https://twitter.com/CraigTreptow mixture of IBM and ruby/rails code, wishes for typecheck, planning to look into Sorbet, 
https://twitter.com/markgritter

## Compiling Distributed System Models into Implementations with PGo	Ivan Beschastnikh
My rating: 3/5 (I learned stuff)
protocol descriptions are not enough, edge cases, design-implementation gap
pgo https://en.wikipedia.org/wiki/Profile-guided_optimization https://github.com/UBC-NSS/pgo
tradeoffs: deve must edit generated source, which can introduce bugs. unlear how to re-appoly changes to the model. 
Compiler magic from PGo- finn built most of it, 
explaining ModularPlusCal (MPCal) why we need it. 
"Finn is going to do the gnarly bits"
Anyone can touch your global vairable and you get this huge laundry list of dont-do-thats. 
macros and archetypes(new kind of macro)
details, using a fileserver as a demo object
Bald dude in front left inturrupts with a question about superset/subset compilers. Answer: yes that will work but you will probably need a lot of refactoring
interleavings btw processes, possible behaviors
link from slack https://www3.hhu.de/stups/prob/index.php/State_space_visualization_examples
presenter runing low on time
executing a modular pluscal step in golang slide
env implementaiobbs rewuiremet
github wiki, branch tlaconf-demo https://github.com/UBC-NSS/pgo/tree/tlaconf-demo
different mindsets
live demo, shows code or converting to -- and tla, does tla model check in terminal
demo over. "running low on time, skip over a bunch of things" talk to them later about hoe the runtime actually works. replicaed key-value store built a paxas spec. no results that he can report
perfamnce- not as good as manual go. not an order of magniture worse tho- maybe 20% worse
compilation is not certifies- they awn to t tio be. 


## S-expressions for Actions with Logic Temporal	David McNeil
My rating: 4/5 (very much worth going to)
https://www.linkedin.com/company/viasat/
Works at Viasat communications satellites, *very* distributed systems
using tla+ bleed over into advocacy very quick, specs are more useful if there are specs for more systems
where we want to get to: "thinking above the code"
developer not a mathematician or computer scientist
ease of use, provide eveloper affordances
SALT- s-expressions for actions w Logic Temporal
"i wasnt nominated to speak for all developers"
using REPL (read eval print loop)- incremental coding as a way to develop
mental model of tla spec
I lvoe that he's showing us his ental model of how a TLA model works, this is really cool
refactoring TLA+ (he explains that refactoring is lol)
"at this point in my career I am not inclined to manually format code, I want my tools to do that for me"
goals: dont replace TLA+ just add to the ecosystem
"tooling for temporal operators"
promote miperitive programming (as opposed to what? functional?)
recommends clojure because of properties, esp. provides for mechanical menipulation of "code"
ppl inclojure space are primed for tla+ because theyve alredy been exposed to most of the ideas
clojure recap- modern lisp, compiled into java bytecode or js, has s-expressions, code as lists (+ 1 2)
salt language
salt/evaluate
An experimental tool to convert a subset of Clojure into TLA+. Although it is experimental it has been used to produce real, useful TLA+ specifications. 
https://github.com/Viasat/salt 
I really really think that we are reinventing prolog here
"I am prmoting the use of tests, but NOT to the exclusion of thinking deeply about our problems"
"how tricky the code is, or how confused I think I am..." 
slide with coding "gears" cool
salt/simplify seems cool
salt/simulate

unrelated foudn while googling: https://forio.com/simulation/mit-sloan-salt/index.htm "Salt Seller: A Commodity Pricing Simulation - The Industry Evolution Management Flight Simulator portrays the growth and competition of firms as an industry evolves. Playing the role of chief executive for one of the firms in the industry, you make key decisions involving pricing, investment and marketing in order to succeed in the marketplace.

This version of the simulator has been customized to portray the salt industry, as described in the Ventures in Salt: Compass Minerals International case. To keep things simple, we abstract from the particulars of Compass and other companies, focusing on price competition between two identical firms. Even though the model has been carefully calibrated and tested, it is not designed to predict the future. Rather, it is used to illustrate competitive dynamics important not only in the salt industry but in other contexts you may face.

So, let's roll. You are the President and CEO of a salt producer similar to Compass Minerals International. You are in the business of producing and selling salt. Your main clients are towns and municipalities that buy salt for deicing roads. To keep things simple, you have only one competitor, whose firm is identical to yours in all aspects (including cost structure and production capacity). The playing field is level: any differences in performance are due to differences in the strategies you and the competitor use. Your job is to maximize your cumulative profit over a period of ten years. Both you and your competitor simultaneously choose the price you offer to customers each year. You will receive feedback on market shares, revenue, profit, costs, etc. Note that US antitrust laws prohibit direct communication or coordination between you and your competitor. You may not discuss pricing with your competitor. You need to select your pricing strategy based on your best judgment about how your competitor and customers may respond."

Also https://pdfs.semanticscholar.org/7d46/ff36b8431326a98174a9ed0971a24823a79a.pdf
https://www.reddit.com/r/programming/comments/4br1f1/leslie_lamport_on_realworld_use_of_tla/

I really like this guy's focus on developer usability, this is the kind of senior person I most want to work with- very senior and very sensible/aligned 
SALT like the scaffolding around the TLA+ Spec rocketship
mi- airbnb doesnt feel very secure, no locks btw the world and the stuff I leave in the room during the day, just two closed doors and some social customs

Q: license?
Q: informal, open PR?
Q: is there a salt AST?
"IUve got a lot of clojure developers at work, and this presentation is the starting point. What I have now is on the github there"
This dude reminds me of Steve Taylor from SWA (reflects positively on both of them)

Marcus wants ppl to use mic for the recording, which implies there will be a recording :)

## Lunch
Went on a scooter ride, ran into two former coworkers and caught up for a bit- skipped the shuttle ride to the food district in favor of food I have with me so I could do the above :)
https://twitter.com/markgritter introduced me to "Catfishing on CatNet By: Naomi Kritzer" the book, apparently his wife writes scifi in Minneapolis and Bujold sometimes attends the writers group she runs O.o xD
Ran into @kf very briefly!!

## Exposing Design Flaws in Shared-Clock Systems with TLA+	Russell Mull
My rating: 3/5 (short, not enough content)
this guy looks familliar
keepng users alive
SIL- safety integrity level (1-4) 4 is most severe
fault tree analysis
contrived example- industrial press, must have emergency stop bottom
IEC 61508 https://www.iec.ch/functionalsafety/ used in places where human life is at stake, works pretty well
in software, shared ystem failures are unpredictable
short story- lots of stuff, designers want on eclock, cannot name company
massive state explosion, combinatorial problems
"model the drift, not the sync" (time drift in massively distributed systems)
"there is of course no such thing as real time, but it's useful as part of our model" #devLife #tlaconf
"We are artificially restricitng the bounds to what we care about"
delivering model- literate PDF, makefile/cfg, config file, instructions
Highly recommend delivering executable models to customers (with instructions) they were very happy
extending the technique
"Generally, a clock which is next to an industrial furnace will drift more than one in a data center." #tlaconf #devLife
lesson: Fake real clock in your model
"and finally, Hilel wayne I owe you everything"
russelll@auxon.io @mullr
in mecheng, "state machine" ... draw it, then it generates sql
intel uses (didnt hear- TLFS?) to design chips

## Using TLA+ for fun and profit in the development of Elasticsearch	Yannick Welsch
My rating: 4/5 (not bad, I learned stuff)
elasticsearch used to throw away confirmed writes
"professor intern" for a summer
Dedalus spec ("Dedalus is a distributed variant of Datalog") http://www.neilconway.org/docs/dedalus_dl2.pdf
860 lines of commented TLA+ code, checking safety properties of elasticsearch
spec with MOLLY based on LdFl
fault injection framework called Molly  https://www.elastic.co/blog/using-molly-to-model-and-test-data-replication-in-elasticsearch
Official link from Hillel (expert) in conf slack: https://github.com/palvaro/molly
Review Lineage Driven Failure Injection(LDFI) https://medium.com/becloudy/chaos-engineering-review-lineage-driven-failure-injection-ldfi-a1c831abe504
discovered an additional unknownd bug in implementation which was only later observed in thw wild. 
formal design first (direct disagreement w keynote presenter)
spewc for cluster coordiantion system
mi- TODO - dredge up my medium account and the EBT post
"straight forward mapping from tla+ to java" (screenshots next to each other- very very similar, nice lambdas) (this spec is lower level, paxos is not)
liveness layer on btop of safety layer
TLC model checker good at finding bugs
resilecny improvements
sate space explosiopns- symmetr sets, cover the *interesting* part of the stae space
how to make it more amenbel to collaboration? 
https://github.com/elastic/elasticsearch-formal-models
Q: when onboarding new developers, how do they make sense of specs? start on smaller problems? how?

## Fixing a MongoDB Replication Protocol Bug with TLA+	William Schultz
My rating: 4/5 (not bad, I learned stuff)
Without a formal model, it's nearly imporssile to get a complex distributed model correct
use a consesnsus protocol similar to raft 
oplog
secondaris fetch from other nodes and apply changes 
(THANK YOU for using primary/secondary instead of master/slave and not even being bothered by it)
https://boardgamegeek.com/boardgame/124172/tsuro-seas exists (learned in slack) yay
replica sets tmers: term, banch of log history
[audio issues being fixed] 
genesis bug found in 2016, 5 related bugs
bug 1: heartbeat commit pointpropigation, erroneous marked ":committed"
bug 2: no avaialbale sync source "turned up oin our test infrastructure" - nodes were indefinitely unable to advance their commit poit
bug 3: sync source cycle ( because of previous bugfix)
solution: rething commit pointpropigation
bug 4: commit point held back
bug 5: initial solution fails in 5 node replication set (4+mnodes)
orignal spec: 295 lines, extended spec 378 lines "so, fairly small specs"
model checking timeline 
note: being on the conf slack is very useful
slide: only 9k staes in state space, found violation in about 2seconds. 
syntaz; ENABLED
only learn commit point from sync source
[more AV guy audio fixing]
going thru 5-node model flow
we define a liveness property of comit points that we want to hold true
this particular liveness property can be an invariabt because we know what were looking for
model checking
macbook 6 seconds 220k distinct states, had never seen in thousands of hours of other testing
very hard to kow if a protocolis corrcet w/o formal model
even very simple and oabdstract models can help catch non-trivial bugs. none of these bug-catching models allowd more than 3 log entries per node. async message passing was NOT modeled explicityly in this spec
https://github.com/will62794/mongo-repl-tla-models
Q: modular refinement - Hillel
Q: how did you get team buy-in? A: we didn't, we did it initally on our own time. I don't think that's the way it *should* be done, but it had not been proven, and it is more effective to show results than to ask for permission to go get results. now that we hae resulsts, its much easier to go forwrad
Q: team growing? A: we're trying, still selling at higher levels management
room capacity: 19 * 3, maybe 80% full so 45 people, 3 womeng I can see


- break - 

## Alloy for TLA+ users	Jay Parlar
My rating: 4/5 (not bad, I learned stuff)
https://twitter.com/parlar
allow book basically the only way to learn allow lol what
http://alloytools.org/
confernce slack has #tlaconf and #formalmethods
Alloy time work is less fun than in TLA+
alloy: based on SAT solver, has benefots/drawbacks, simpler(?) syntax, fedback says that allow is easier at first syntax-wise
Alloy has a visualizer which is a super cool thing. time to useful results is faster(?), focuses on "small scope analysis"
discvovered subtle security bug (13+ steps), invalided a yearlong API doc >.<
Demo: simple permissions system (simplification of Okta I assume)
showing demos, adding a constraint (syntax; called Fact)
see more problems via visual inspector
more demos
deisgn exploration - allowing for it- 
definition charts, sets of tuples
dinner plans?
users {}
same as OO he says? 
full table join
Time in Allow = ? 
alloy has no mutability, must do relations that vay over time
open util/orderingTime
sig Time{} 
??
facts are overpowered, use checks instead? every pair of user in time
more time stuff- prime is not reserved in allow but people use it normally (convention)
tracking "unchanged" is annoying in TLA and Allow is worse. very error-prone
this section of this talk is all how-to
adding a resource to the system should not change anything about a user - cehck it
"ots going to show you something weird you didnt expcet. People love that. I'm people, I love that."
"most people arent familliar ith TLA+ and/or operators even through theyre used in math. thats weird tome but its true"
data modeling is better than operation modeling- abiloty to understand the possible data structions of your system- without worrying aboutthe operations taht brought you wthere
"basic math" is not commonly understood
"most people think that sets are a way to eliniate duplicaes from a list!"
there's a paper comparing allow to TLA+ and the speaker thinkgs it's too mch in favor of Alloy
https://aosabook.org/en/index.html has a chapter on this
TODO mi: reread these / bring to work? 
The Performance of Open Source Applications https://read.amazon.com/?asin=B00GEZEKQ0
Alloy bounds you hard on sigs and number of time sigs- makes some livenes sstuff v hard

## On Advocacy and Instruction	Hillel Wayne
https://www.linkedin.com/in/hillel-wayne-94a7025b/
https://twitter.com/hillelogram
This talk will NOT be recorded O.o talking trash about previous employers, plz dont tweet too hard O.o ??
This is the dude who multiple speakers have previously prodigiously thanked
2016 working education webdev, learned a lot, "worst quarter of my working life" legacay team managing main money-maker, accidentially-distributed system. 10 eng. (according to linkedin this was probably eSpark) Autumn is busiest, bugs file, slept labor day in teh office. Company was hiring but he would be the sole eng on the team for 
"Now you're back to square one, but more sleep deprived. So me and my manager started trying more exotic solutions. We were desparate and considering throwing up our hands and porting everything to haskell. Then we heard about TLA+..."
"Company thoguth it was a waste of time, I should be fixing bugs. I kept at it"
"I knew the math but how do you type it in"
Principal eng came in and built it, CTO reviewed it, he said no- its complicated and delicate and I want to model it. next day he came in with a spec, showed it to principal eng, tey agreed that it would correspond. Proved. "and then I clicked run""Ive been in this industry for 13 years and Ive never seen anythign like this." And my career shifted and I didnt even know it- this was lighting in a bottle important. So be made Learn TLA website. Then published a book, consulted w companies aout it. "Planning driven development" 
So this is about- why do people not learn this? 
There have been many waved os solutions in the past. CleanRoom, UML, flowbased programing, noen of them worked, none of the created asting help for people. So people are very skeptical
There are langauges like Isable, Daphne, - the people who say it's not the future are the ones who use it. 
By the 3rd day, theyre finding bugs in their actual production sytem. We actually matter. TLC has been around since 1999. We havent focused onbusiness sytems and industrial systems. So build public specs showing actual probelms? People flip to converts very fast. Make more public repositores- like markus has been putting work into!
Creating revolutionary tech is a technical challenge. Getig people to use revolutionary tools is a social problem. 
evangelism is itself a skill. Dealing with somethign called "expert blindness" where you forget which things are hard
truth table experiment- we can all fill out this truth table, most others cant
befits ofd modeling- first rigorous thining, then model checking. 
Other things that peole say make you more rigorous in your thinking... (very long list of stuff)
Dont evangalize rigorous thinking, evangalize model cheking- its more marketable. 

from slack: 
I disagree that actually finding bugs is sufficient; see for example Coverity's article https://cacm.acm.org/magazines/2010/2/69354-a-few-billion-lines-of-code-later/fulltext
Do bugs matter? Companies buy bug-finding tools because they see bugs as bad. However, not everyone agrees that bugs matter. The following event has occurred during numerous trials. The tool finds a clear, ugly error (memory corruption or use-after-free) in important code, and the interaction with the customer goes like thus:
"So?"
"Isn't that bad? What happens if you hit it?"
"Oh, it'll crash. We'll get a call." [Shrug.]

How do you keepo it in sync? Comments cant even stay in sunc and those are right next to the code. 
Q: thoguths on rigorous thinking? Why do you think it makes you think rigorously in a way that might be better than the long list of examples you had? A: no. Last year I gave a talk about how jugglingmakes your thinking more rigorous. 
Q: there are lots of academic studies abotu why these arent used. the result os economics. 

This feels like we're driving towards waterfall here, despite teh keynote speaker recommending against it. 
"forget teh last 20 seconds I'm jetlagged" 
How we teach is important. Expert blindness: not knowing what's easy or hard. 
Greg Wilson's Learner Hierarchy: http://teachtogether.tech/

irrelevant but fascinating:
http://third-bit.com/about/
https://idlewords.com/2019/05/what_i_learned_trying_to_secure_congressional_campaigns.htm
"Practical campaign security is a wood chipper for your hopes and dreams. It sits at the intersection of 19 kinds of status quo, each more odious than the last. You have to accept the fact that computers are broken, software is terrible, campaign finance is evil, the political parties are inept, the DCCC exists, politics is full of parasites, tech companies are run by arrogant man-children, and so on.

Putting aside the urge to fix these broken systems long enough to help people get work done is the great unsolved problem of campaign security. "

problems w teaching PlusCal- two languages, community stances- it's not TLA+ don't want to learn because it's not TLA+ (and then youre in teh deep end learning everything at once)
Good error messages are super key for beginninger. 
bugs: == and missing \
The speaker compliments the toolbox. Teh challenges are different... 
Ivan Beschastnikh 5:09 PM
Another relevant article is “Whatever Happened to Formal Methods for Security?” https://tsapps.nist.gov/publication/get_pdf.cfm?pub_id=920593

from the paper: “FM likely won’t reduce time-to-release because many releases are driven by preset calendar dates, not by quality targets.”
Ivan Beschastnikh 5:15 PM
And, another one “Why Don’t Software Developers Use Static Analysis Tools to Find Bugs?” https://people.engr.ncsu.edu/ermurph3/papers/icse13b.pdf

recommends building things to let people to build an ecosystem
previously mentioned company- went from 10 eng to 3, and every few months he asks and is answered- how's stuff- yep had another catastrophic problem and lost weeks
"do people floss their teeth to avoid a root canal? consistently??"
How to get ppl to "keep" using TLA+???
now people are having feels, I am very hungry lol

## Friday
Wandered some booths, talked to Braintree, nodded to Netflix, asked questions at some companies I hadn;t heard of who sound like they' 10 years out of date lol


Announcements: 
CoC announcement *first* thing, nice- duty officer at the desk
Wifi
Evening keynote family issues, will do it remote
This is strangeloop 11


## How to teach programming (and other things)? Felienne Hermans
My rating: 5/5 I want to encourage many people to watch this talk!
https://twitter.com/felienne
2008 her grad research- building a finance DSL like "if interest > 5 then sell"
Big lesson: the non-programmers already program - in spreadsheets
Excel is a really goo dprogramming language- people use it and don't even know hey're prorgamming- unlike all other IDEs!
"It's not programming, too many people can use it / everyone understands it :( :( :("
"During my PHD I learned that adults are just mean to each other all the time. And I didn't unlearn that until I joined a running group and they were nice to me- and I was a bad runner!" @Felienne #strangeloop
Knitting community also inclusive
Pitch for other talk tomorrow
"It's 2013 again. I am sad. I just graduated my PHD. In thsat job interview I blatantly lied about being still excited about spreadsheets, and I got hired. I till wanted to work on it and I thought it was valuable, but it had worn me out." @felienne #strangeloop
the prompttt `>_` (self taught)
Our community is seltaught at a young age, so everyongr things - just let the kids explore, that's how it worked. 
"the best part of programming is finding mistakes" No dont clap for that, it's stupid. The best part is building things, or expressing yourselves, or making money. There are so many best parts!"
"you will fail often, it would be frustrating" same for horseback riding
"break the rules" I like this as life advice, but this is python, if you put a space in the wrong place, python will be angry
Did I survey of 100 code clubs, 71% students work independantly with teacher as resource. This is the "just let them explore mindset"
kids: this is hard, me: when I was 10 I did all these things (I didnt know anything about teaching) having a phd doesnt make you a teacher but it gives you the power. 8-yo will TELL you when they are frustrated. Undergrads will go home and cry and not tell you. Undergrads have self-image that they *should* be able to understand so they think your failings as a teacher are are in *them*
Oxford handbook of reading
Sound makes sense- read half and half
"We lack pedagogical diversity in how to teach programming. In teaching reading, there are many debates- like phonics vs whole language" @felienne #strangeloop
"We lack pedagogical diversity in how to teach programming. There are the math wars. " @felienne #strangeloop
Seymour Papert wrote Logo, one of the first ppl to want everyone to learn programming. 
Piogen said - everyone must build their own model, I cannot put 
"By explaining something, you take aeway the opportunity for a child to discoverit" as so much of programming education is based on that. 
"It is ingrained into programming education that you shouldn't explain stuff" (and that is a problem) @felienne #strangeloop
In soccer, you do practice as well- not just playing matches all the time. EWith guitar you do finger placemens and chords- you practice little things also 
use of worked examples for problem solving by Sweller&Cooper - research paper
the group with example socratic problems did the problems 1/5 in the time ANS same on future problems
short term memory- symbols, nonsense words in english, real sentence- because there is a construction around it- because you understand it. short-term 5-9 items research from 50s. More recent suggests lower. It is a miracle that I can stand here while speaking and wave my arms, if this is true. But your brain can do "chunking" and so there is even room left- you dont remember the symbols individually. 
the onsense senseitive- full ness in your working member-0 experiences cognitive load. This is why the first group did so much better. The cognitive load was too high, there was no cognitive load left to remember and reflect, so they didn't remember well. 
"You don't become an expert by doing expert things! You don't become a marathon runner by doing a marathon every day. [this directly applies to teaching programming]" @felienne #strangeloop
I hear ppl say- I want tomake kids problem solvers by making them solve problems, but by h
experimenting by having kids read source code aloud, because of the 
different language difference plays a role, makes it clear what kids are thinking - different sounds for same symbols! Means they are not connected. 
we should tell kids! How to say code "repeat after me: for i in range..." helps a lot! huh
tell students how to solve problems
Paper; the case for case studies in Pascal Linn&Clancy 1992. Group 1: write own code, then read expert code Group 2: same, but with explanation of expert code. Group 3: did not write any code, just read expert code and explanation. Teachers said group 1 would be best. second and third group did EQUALLY well. There is lots of cognitive load left to remember!
"code clubs" is an interestign concept, is that a thing? When I've taught, there are a lot of requirements- background test, TB test- are those steps being skipped?
riny tests- which one is a variable? Circle it. can do in 2-3 min at end of club. So you get an understanding of what kids have memorized. Research says tha having kids remember it, will strengthen their memory and increase their chance of remembering it next week. 
"haters are everywhere except for running and knitting."
"Ive done this talk many times, a guy came up to me and pointed his finger at me and said 'youre making it look like school' well yes, school is very successful. This anti-school is part of pgroamming culture, dropouts are very famous."
"porogrammign should be fun! they say... well, I have science. It doesnt matter if ppl are having fun for learning,."
"hello, welcome to running fast! Do 50 pushups! Not fun. I do this because it makes me stronger and quicker."
Kids coming into elementary learned to walk already, fell a lot, was not fun. Adults think that motivation leads to skill, but its the other eway around. Realizing youre doing wel brings the motivation. 
"dont be thiese people who say 'this is not real programming' we should be like runners- encouraging and welcoming. " 
least to most programming - online survey - do it in secret. what did you have in mind? shame, regreet, anger that ppl do this. teting, syntax, accessibility? Research ismore 
bit.ly/pl-views
slides made eith goodnotes by hand

## break
Ran into Ana Unin from double union who recognized me xD https://strangeloop2019.slack.com/archives/DN0BLA6AF/p1568400392000600

## Behind The New York Times Crossword  Darren McCleary
my rating: 4/5 very cool, I learned things (none of them were about code tho)
He recommends going to talks about things youe never heard of
he left a bit ago, still has permission to talk as long as he doesnt give away corp secrets :) 
Joined NYT becayse he watched somethign about how they use Go, thgouth it was progressive of them, emailed his resume (sad that sstems is gone)
He was a memmber of hte games team, and a member of the architecture review board. theres a team dedicated to games, supports .5 million paying subscribers- extra chanrge on top of news subscription. games is a startup inside NYT, entirely self contained, 
NYT has Set (free), spelling bee (paid), letter boxed, tiles
mi- why does the sight of this game make me feel tired
three specific people, one of them a legant=d, only person with a phd in puzzleology? or something?
Deb Amien write articles about which words stumped people - data is gathered using BigQuery
"a primitive form of mental exercise" lol but then the paper wanted to give somethign to the readers to look forward to
crosswords have themes
holy crp this is arcane
crossword goes from easy on monday to hardest later in the week. Thursdays are tricky not just hard, Deb does a live solve on Thursdays on Periscope zomg
Saturday has the most cryptic clues
cool heatmaps slides
min icrossword 5x5 (lol advertising) generated by hand by joe foliano, can get onto a leaderboard w friends lol, competive in times. 
NP complet problem to generate a rossword, 3x3 is possible in college class but large ones are much harder, its not just he words but making it enjoyable, themed, knowable words
70 recieved per week, sort by weekday, and keep a stack waiting to publish (must submit physically) 
crossfire is a tool for creating puzzles
puzzlemakers often have their own dicionaries built
$500 for a non-sunday, price goes UP with more puzzles, suncay is $2250 dang "not somethign yo ucoud live off of but we pay people for their contributions"
spiky 10pm traffic, push notifications- used to hbe max scaled at all times, so the rewrite prioritzed flexibility to avoid that expense. moved to "serverless" baackend, 5 min before 10pm, cron says scale up. "scale yourself right now, appengine can midify its own configuration on the gfly" "alright app engine, you did good, scale yourself back down again"
backwards hats are weird
Thre's a guy with his kid in teh front row whih is pretty cool
ntyco.com/careers "despite I left, they are pretty cool, remote-friendly and remote-first, Adnroid eng both work remote from st louis"
comments concerns correaries, conundrums
Q: crossword community research, drama, how do you check new submisions, manual process for checking, accusations of plagarism from submitter, trying to cheart the system, hard to tell, they are not good at detecting it- but will, joel and sam are very good at it by now so go mostly on instinct(?)
Q: cron to scale up- does it naturally scale down? Yes, secondary cron decreases idle instances
Q: how does NYT use golang and why was it chosen? games platform, personaization, email messaging, its the backend lang of choice. Introduced as a test, decided they liked it. very old company, lots of code, cobol, c, java, python. 

## Temporal Databases for Streaming Architectures Jeremy Taylor, Jon Pither
My rating: 2/5 meh, it's a product pitch to solve a prpblem which isn't new to me
aaa my hipaa unconference session tonight at 8, aaa
"Statistically, your friends are lying to you." https://rands-leadership.slack.com/archives/C26HH454P/p1568385307414900
they discuss what  logs are
bitemporality - trasnaction time, when a fact is transacted. event log- when event enters log. valid time: when a fact is true
Crux MIT licensesd built for strea,ig architectures, eviction, datalog queries (cool), api for "unbundled database" ? 
this is a "look what we built" talk
"advanced bitemporal support" lol, cool logos
https://juxt.pro/crux/docs/index.html

## Lunch
hung out w/ Daigle & M, said hi to purple hair friend, boyle, met some dude who was self taught and proud of it, unconvinced about keynote
asked questions to john deere (mobile dev obj-C moving to swift), hi & questions to twilio dev evangelist with cool long hair


## Privacy Governance & Explainability in ML/AI Jared Maslin
my rating: 3.5/5 great content, slow start, unhelpfully dense slides, good enthusiasm
CCPA, GDPR, overview, consumer data is an asset, and can be a liability. trust is not a tone-time transaction, consumers want to know (or else they)
 will assume) how teir data is being monetized
 Met a dude John who is in a band which is made of bank employees, bank' smotto is "teh greatest bank in the world" so the band is called "the deposit withdrawals" did a neighborhood show from his garage on a rainy day. Bald on top, blue badge, my height, maroon polo shirt
 voice of consumers into products- transparency prmotes trust, current and future practices
 cultural norms= what can be done with the data
 Got another job rec ping
 cool chart, see my notes- data and privacy chart
"no panacea, but some companies are breaking new ground"
current stae of privacy governance
lady sitting behidn me is the older sister of the speaker :)
cool data-dense slides
intriducing alibrarted "noise" to re-anonomize data while keeping the characteristics of hte data using an OSS library


## break
talked to elasticsearch dude who has done 3 startups, got some stickers. startup 1. delivering fast wifi startup 2. ?? startup 3. elasticsearch, name - Kevin Keeney
Shreya Gupta - SWE in R&D, interested in backend development, might work on arooo? will chat. "I'd love to get involved with the makerspack/hackerspace community and hopefully contribute to the codebase!"

## Automating Operations of a Global CDN - Robert Fernandes
[AV fixing]
CDN recap, Netflix is 1/3 of the USA internet at peak Netflix hours. OpenCOnnect team history
how teir process goes
wehich content in shich places, cant hold it all there. in off peak hours, transit activity cost goes down with less congenstion, then netflix moves teh content into place. large files into place. a few locations DO store the enire catalog, then dump the right things to regional, then peer fill between themselves. save on bandwidth. very cool!!
Netflix runs a custom fork of freeBSD
not scaling well, so connect the groups an dbuild more general solutions
OpenConnect tools vs control plane
Netflix only serves certain content to certain parts of the world, thats how rights management works. we are subject to due dilligence inspeaction to make sure that N is doing it right
pre-data box before shipping to onsite with corect consite contens
cant move some videos thru some countris even if theyre not plaed
oh man now I want to watch more netlix
"There" were a lot of organic processes that came about. Software is never short-lived" spreadsheeeeeeets
there are always going ot be phone calls happening, we are never going to automate away the world
Netflix platform- Cinder, hermes, 
revisions of movies! Same movie different VZERSIONS for different locations?? Not jus translations(?)
large 3-tiered webapps that got built. dashed line is btw netflix internal, and external- partner inventory and portal
from applications to microservices
lol disclaimers, MVC != evil (but at scale they need something more)
mi- make a pretty diagram of all our microservices? https://www.youtube.com/watch?v=wgGGtOddQRA https://www.youtube.com/watch?v=3laIxA6FEKs 
going from application focused arch to platform-based. streamline builds and deployment 
"folds in most apps" ?
broader data definition and model- generalize devices, orgs, sites, contacts, users, etc. Standardize service communication- gRPC, streams, queues. Reducing duplicated effort dramatically.
more or less a UI application per web app at this time. A UI team whicj understands rest APIs. looking to break that apart tho. 
current/future UI landscape: put all internal admin together, put all partner stuff together, split internal/external for OC Integrator panel. Fewer total apps since it's not one per x anymore?
Netflix channel on slack? Another netflix talk tomorrow on  pattern matching

## Building a Unified Cancer Immunotherapy Data Library - Lacey Kitch, Ben Kamphaus
she got cancer (in remission now) 
immunotherapy is very new, lots of research left to do (see diagram photo)
types of immunotherapy: checkpoint inhibitors ( body can kill tumors, but tumprs evolve to stop them- CI puts a brick under teh brake pedal, so the tumor can no longer stop it)
cell-based therapies: CAR-T (approved in the last 2 years) remove cells, update them, put them back
Immune enhancers
[TODO embed pics here]
as of jul2019, 4k immunotherapy drugs at various strages, 2k active clinic trials in most actiove checkpoint inhibitor. 
Can we be more infomred? Manage data well? Feield is like early days of chemo wher we want to try everything and try all combos of all things
Data kinds: patient samples (blood and tumor) and a wide range of different biological assays that can be run. For example: Tumor-immune imaging, sequencing and gene expression (see mutations), t-cell sequencing, immune orofiling, many others (rapidly growing field). This is combined w/ clinical data- age and therapy, how tratment is going. 
Start w big raw files right off of the assay, then measurements sumary, then analysis. Specific insights look like alphabet soup. Interpret them in teh context of existing knowledge. Form a hypothesis, then go do more analysis on your data
With CANLE, trying to make a system to support this interpreation workflow. 
Data is physically fragmented- inside and outside organizations. public data sources, excel tables in published tables- basically dark matter to analysts
A pile of data is not useful no matter how big the pile is. Data is concel=ptually fragments- it lacks a unified schema and unified semantics. For eample 
There's a gene called SEPT-2 and Excel reformats it, there is a sci paper analyzing this badness
Check out these tables, they say the same things but look toalluy different
this is a giant hecking ETL project / data cleansing and combining, and it is essential and precise
scientsists ahave to be experts in their styff, they dont have time to be data engineers. Want to be a team- tight cycle time, be a team
CANDEL - bring tools to import ANY data
schema must be highly mutable but highly relational, yikes
next speaker: Ben from Cognitect
Datomic is what they use
Big company data science teams and eng blogs
Man if I go to Recurse Center I want to do something like this? 
Datomic 101 recap now:
disparate backed tables (4 colors again) not denormalized data, representing things: entity attribute value (subject, disease, head-and-neck-cancer) okayyy, multiple facts, some about the same entity. has id, therapy, etc. "IDF triple scores" Transaction timestamps (oversimplification)
Can cancel out previousl knowlege
https://github.com/Datomic
datomic references, reference types? db/ident: keytruda https://www.keytruda.com
bidirectional transversal
https://github.com/Datomic/day-of-datomic clojure sigh
Datomic is proprietary? https://www.datomic.com/ https://docs.datomic.com/on-prem/examples.html
https://github.com/relevance/diametric http://blog.datomic.com/2012/10/codeq.html
facts from differn tables, datom. sparse table. can flatten to schema... concat tables at different levels of hierarchy for similar types of data, huh. 
Talk I wish I could have gone to: https://www.thestrangeloop.com/2019/the-strange-loop-making-parasitic-insects-our-friends.html
laptop is so close to dead eek
datomic, IDs on differnt schemas. timestamps can be annotated with which workflow data came from, what instrument collected the data, can invalidate data based on that? 
mi- should re-curate DU issues with more details, add a unified checklist to non-simple issues, try to clarify all issues, be more agressie with closing old issues
TODO pitch double union in strangeloop slack maybe? 
Datomic schema as data. Datomic has its own data layer, traks what things are referenes, strings, what has to be unique, which are many to many. 
CANDEL has added a metalayer, schema annotations as data in datomic. tracks what kinds of things in the db 
config structure emerges from data, it is not hardcoded. can iterate very quickly on schema changes because of this apping. This drives the ETL process. 
Import validatior is the only part tied to the CANDEL schema. Downstream validation. uses clojure to ensure referential integrity, regerences make sense, range adherence for values, entries has valid strucutre. uses datalog query to enssure constraints. pretty print errors. 
pret commandline workflow
do against staging db, then push to prd db, commandline login very cool user friendly kinda, very few comands (shown here at least) 
parkerici.org
Back to original speaker, go through real analysis case
have created unified schema- can look at it 
https://www.softwaretalks.io/r
There seems to be very little about this online
phase 3 study, 
Parker institute goal- learn as much as possibe from every study done. Ran a lot f assays on each samepl. combined w same data. loaded it all into CANDEL. 
first make a table of data- this uses other infrastructure not mentioned here. Once its there, 
lots of aphabet soup here
cell free dna, dPCR, data is not in vonfig, fed in from file. 
fieldnames have descriptors
sex, race, ethnicity pret can deal with reverse refefnces (?)
data file is .edn
run pret prepare, get erros, see out of range errors. during :"transact" pret errors on references to non existant 
run ":validate" get most complex errors 
loaded a lot of data- some public, some more. 14k subjects, 5.5+ million distinct measurements, informatis team. 
There are other clojure projects which want to revolutionize data science, scientists dont need to know about clojure. Gave datalog query directly tho. serialize queries over json. 
Most datomic queries are raw EDN. 
spec parser for datalog over plain json.  spec can do this itseld? 





## ASTRIAGraph: Monitoring Global Traffic in Space! - Moriba Jah
Remote keynote
very cool, see tweets- yep astriagraph is cool and no one really agrees where most satellites are
he used a dove satellite as an example

## unconf esssion 1 - datomic
It was not well moderated so I left to prep for my session

## unconf session 2 - HIPAA
About 15 people, did introductions, talked about stuff- defining terms, custom EHRs, insurance, decision support software for docs, surgery tourism by american healthcare companies
Book recommendation: Elizabeth Rosenthal 
- Caroline from USPS
- -- from BloomAPI
- lvh - friend, very enthusiastic about work sampleas as a form of hiring. https://www.woventeams.com/ will help companies customize their ways. 	
- Bryan Hunter, consultant, ACA Health https://www.linkedin.com/in/bryanhunter/ writes erlang FH7 and FHIR libraries http://twitter.com/bryan_hunter
- https://twitter.com/marlenebfdez Mass General 
- Person who works on an EHR for oncology practices
- dude whose wife is a kidneys doc
- highly recommended book: An American Sickness: How Healthcare Became Big Business and How You Can Take It Back - Elisabeth Rosenthal

## Saturday

Stopped by the express scripts booth and quizzed their guy Nik (api tech manager?), was deeply unimpressed. Moving monolith -> microservices, java/kotlin

## How Computers Misunderstand the World - Meredith Broussard
my rating: 4/5 I would recommend that ppl watch this
titanic analogies
technochauvinism

## Securing cloud applications and their credentials Srdjan Grubor
I was not thrilled by this, it was a basic security 102 talk with some ego, and also a product pitch for the company he works for. Probably useful for many audience members but I shouldn't have gone. 

## break
Chatted w John Deere mobile app dev, she told me cool stuff about their tech stack and testing/CI
Chatted w/ data eng lead from Wayfair, they use Vertica, Hadoop, lots of other stuff, they have their own warehouses and last mile distribution

## A better story for Kubernetes secrets - Seth Vargo
My rating: 
Weird self-deprecation about being before lunch O.o
protecting secrets: audit, encrypt, rotate, isolate. 
Yet another security 102 talk but this one is more pleasantly presented
Audit = "verify and log the use of individual secrets to a central system" (and alert on weird use patterns like unusal 2am
)
Interesting point- bitlocker encrypts the whole drive, BUT you want to encrypt more granularly than that- each differnt key should be encrypted with its own key. Analogy: bank vault vs bank box (shared vs individual)
K8 insecure by default, plaintext in etcd, base64-encided which is basically like nothing
"a lot of people confuse encoding and encryption" lolll
DEK and KEK (data and key encryption keys respectively)
encelope encryption https://cloud.google.com/kms/docs/envelope-encryption very good writeup
very cool structure, revokable ftw, "crypto-shred" lol
Things you have to google are concerning because what if there is a subtle flaw in the answer (or the answer changes) for serious
"You can't put an HSM (hardware security module) in yaml, I've tried"
Haven't fixed your threat model if keys are in the same place as the data it encrypts. k8 1.7 was a stepping stone- k8 1.10 introduces encryption provider (still yaml- community didnt like json?)
mi- put back internet speed display plugin
"Droit clients include many large, complex, global financial organisations, both buy and sell side." lol (SL sponsor)	
IAM solved the "first secret" problem
live demo


## lunch
I belatedly made the #healthtech-tech slack channel 
If I join another consulting company, it might be 8th Light (not Carbon 5, mayyyybe Pivotal)
Said hi to -- (red hair0 who knew me by handle but not face

## Building an Open Source Artificial Pancreas - Sarah Withee
explanation of insulin
not often diagnosed early
humalog from lilly
carb ratio - everyone has one, you usually dont need to know it, 3-50 per insulin unit
insulin sensitivity factor
cool diagrams
OpenAPS - the one the speaker runs. Has 915 MHz transceiver, your phone doesn't use that frequency. It needs an old Medtronic pump. Need an old one because it has a security flaw which enables this kind of system. Cloud storage Nightscout https://openaps.readthedocs.io/en/latest/docs/While%20You%20Wait%20For%20Gear/nightscout-setup.html https://github.com/openaps/oref0 
LoopKit also needs a Bluetooth/915 MHz board, uses iOS softeware for calculations. Must compile your own iOS app https://github.com/LoopKit/LoopKit
AndroidAPS mostly works with European pumps https://github.com/MilosKozak/AndroidAPS
Medtronic 670G - closed source proprietary, conservative algorithms, "one size fits all"
sometimes no support from medical communities, med device companies hate it. 
"your sugars are really good, what are you doing?" - her docotor... so fessed up and doc was like "ok since it works I guess"
oref0- basal adjustments, 
oref1: 0 _ microboluses
loop: basal + recommendations
andoroidAPS: 
http://geekygirl-nightscout.herokuapp.com viewable O.o
live pump data viewing
3am cehcks and updates carb ratio
showing gear bag, "waiting for TSA to stop me" health is worth it
what if your pancreas battery dies? charge it, go back to manual mode
without internet? manual mode
Why not FDA approced? This is a self-experiemnt on yourself of 1, FDA is not regulating those. Not a sold device- you buy parts and build it yourself. 
Why dont etch cos do this? 

## break
Met up with a dude who wants to work for SH, lives in Chico, CA, needs a visa or remote- can't do :/ 
Chatted w Slack booth about how to do bots, their apis, got some cool stickers :)

## Community Driven Development - Christine Zagrobelny
Admin, ICE< friend
make it more sustainable so host a hack event- hosted by progressive hack night in NY
Did a lot of the things that first time contributors need- seed data, readme, setup, made issues better for easy-start- assumed no initial experience with the software or codebase
team of engineers at Ruby for Good
final sprint to finish, merge deploy - another burnout. Not getting longterm contributors even tho it was working well for hack events, but not working to retain contributors
What motivates someone to contribute longterm?
advice: 
- keep people in the loop via newsletter
- virtual co-working event monthly
- do shout-outs
"the important work is not the sexy work"
https://www.newsanctuarynyc.org/
https://github.com/CZagrobelny/new_sanctuary_asylum


## Meander: Declarative Explorations at the Limits of FP - Jimmy Miller
This is a pitch for an OSS library that replaces manual key-based object mapping with map-reduce with key intuition. It is cool but not huge news unless you need this and didn't know about it already. Sat next to @lvh who is super cool :)

## Closing Keynote - Imogen Heap
This is the best thing in the world and she has amazing internet of things musician control gloves and the software is super cool and possible open source? re-watch
https://www.youtube.com/watch?v=w6azdQLdTHE




































