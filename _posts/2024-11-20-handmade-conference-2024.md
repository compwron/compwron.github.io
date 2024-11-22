---
layout: post
title: "Handmade conference 2024"
tags:
 - conference
---

I attended a conference. These notes are for me, but you can read them too.

2023: [https://compwron.github.io/2023/11/16/conference-handmade-seattle.html](https://compwron.github.io/2023/11/16/conference-handmade-seattle.html)

[https://handmadecities.com/](https://handmadecities.com/)

[https://twitch.tv/abnercoimbre](https://twitch.tv/abnercoimbre)

[https://youtube.com/@handmadecities](https://youtube.com/@handmadecities)


"data broker"

"violating privacy"

"respect the user"

"why forking everything?"

want speakers to have no nervousnesses

andrew kelly, zig

"he said about me - he likes ppl more than i do"

"does his twitter still say 'highly misanthropic'"

abner wrote a ticketmaster replacement 

uber dude lurker lol

"dont bury the lead!!" lolll

501c6 6 hmm

salt about openai making irs wary of new software 501c3s

indie, spicy, fun, ruthless scrutinize, honest opinions. respect the ppl next to you

[https://github.com/andrewrk](https://github.com/andrewrk)

[https://mastodon.social/@andrewrk](https://mastodon.social/@andrewrk)

"yet here we are, 100 sweaty introverts crammed into"

"the unlimited potential value of computers"

lol download piracy video

article "the forgotten history of how car companies invented jaywalking" 

[https://www.vox.com/2015/1/15/7551873/jaywalking-history](https://www.vox.com/2015/1/15/7551873/jaywalking-history)

"computers are inherently naughty"

"if i install this, things will get worse" 
sms app advertising for google
discord update for ads
unsubscribe from spam -> 500 error
george carlin clip - radicalization is being attempted, "owners". advocating fro education tho? 
"its a big club and you aint in it. same one they beat you over the head with. the game is riggged."
george carin voice good
"humans are hoarders" (of computers?)
crudity childbirth, systems thinking
"why do we build towers of abstraction and forget how they work?"

my salty take of the day so far is that this ~group is *partly* people who want to reduce percieved and possibly real "extra" effort 
getters/setters are mentioned as particularly unneeded
unneeded for software to work, but not for the system-which-builds-software to work
...if anything makes that system work

"we're not going to do it [change the industry] by coding harder..."

"I have a shadowban list in my head, they are worse than the 4chan nazis who you can just ban... "

[https://mitchellh.com/writing/ghostty-is-coming](https://mitchellh.com/writing/ghostty-is-coming)

github zig pr bankrupcy
[https://github.com/ziglang/zig/pull/18341#issuecomment-2308142247](https://github.com/ziglang/zig/pull/18341#issuecomment-2308142247) oof

"we all have exploitable lizard brains... it is the *system* that needs to be attacked and reconfigured"

redis license change in may. forks: redict, valkey

dbs open source. postgres
compilers also
"free software is a ratchet... (improving ecosystem)"

tower of babel redeernce

...
"how do i shot web" "immature youths having formative experiences in the world of computing"
"together we serve teh users!"
"sieze the "

"don't just optimize for frame rate, also optimize for user freedom"

they are *very* on free software as solution

"which group of humans is capable of maintaining the project?"

"if it's an imporant roject, there wil be more than one person with the knowledge to maintain it" citation *needed*

"I'm not telling anyone that what you're doing is not ok - sell your company to microsoft and cash in! ok but now as a user now I need to move my data"

12:06 break

[https://www.thinkage.ca/gcos/expl/fred/expl.html](https://www.thinkage.ca/gcos/expl/fred/expl.html)

Creative Exercises at the Low Level by Allen Webster
compilers and linkers, diagrams

It’s Not About the API by Mason Remaley
[https://www.vulkan.org/](https://www.vulkan.org/)
vkphysicaldevice vs vklogical device
run on teh right gpu
"mega-jank" 
"who here reinvented command buffers in opengpl? yep all of you"
vkPipeline. shader module. s
less global state than opengl 
swapchinas https://vulkan-[tutorial.com/Drawing_a_triangle/Presentation/Swap_chain](tutorial.com/Drawing_a_triangle/Presentation/Swap_chain)
sychronixzation "we all know that multithreaded programming is hard"
memory management: gpu side, cpu side(manual, hap/pool allocation) 
memory management - vram - level data - ...
"cache-coherent"
"memory management doesn't have to be complicated, there are a lot of details to get right, get it rught once, stick it in a bugfffer..."
vertex data "vertex pulling" concsat into single buffer, interpret in shader. index buffers good, allow optimizations
[https://voxel.wiki/wiki/vertex-pulling/](https://voxel.wiki/wiki/vertex-pulling/)
"uniforms - put in a buffer, index it up front" prettty fast and simple. dont use api. do use descriptor set. 
"bindless rendering"
could sort draw calls, but - materials - already have em, ? 
ubershader
"its' wither not what they're talking about, or they're wrong"
materials: details 
"it has instancing"
waht this gets us - minimal driver overhead, api surface area, ... 
"does your game need to render more objects per frame than there are pizels on the screen? I didn't think so."

"if u ask a low level developer to write python... "
"if gpu programming is important to you going forwarf, ... do vulkan, it will make it make sense"
vulkan extensions, ? 
"if directx has it built in, that means that probably my target mchines have it built in..."
"how does the gpu unpack arbitrary shader code" 

"I really don't like heap allocators in general. the answer is always a bump allocator" wut
"intro to boneless rendering" when u do the ollie but ut foot on ground while rending ing triangle


Ark Version Control System
https://ark-[vcs.com/](vcs.com/)


Project Salarybot
[https://store.steampowered.com/app/3067310/Salarybot_Shuffle/](https://store.steampowered.com/app/3067310/Salarybot_Shuffle/)

--- day 2 Thursday

Intro
"there are conferenes sponsored to their eyeballs"


A shining palace built upon the sand - Devine Lu Linvega
register math? 
dream analogy
"I fell asleep in front of my terminal waiting for th arm architecture book to open"
what was that
story about downloading xcode on a sailboat
[https://spaces.is/loversmagazine/interviews/devine-lu-linvega](https://spaces.is/loversmagazine/interviews/devine-lu-linvega)
"whichever version of python people are using in 100 years"
[https://store.steampowered.com/app/736260/Baba_Is_You/](https://store.steampowered.com/app/736260/Baba_Is_You/)
"I don't believe in division of labor. my life and my work is the same. i need art and music in my work. i don't like the terminal, it's too clean"
"John conway"
cites [https://en.wikipedia.org/wiki/John_Horton_Conway](https://en.wikipedia.org/wiki/John_Horton_Conway)
[https://www.puzzlescript.net/](https://www.puzzlescript.net/)



Democratizing Software - Wryl
good voice
good analogies
robust systems
"old masters"
background in education
"I'm of the opinion that something went very wrogn in the last 40 years"
whispers of it in retrocomputing. forbidden arcane knoweldge. not. just swept away bhyt hte tides of time
..
are we reinventing prolog? 
rewriting
game loop...
mi [https://github.com/kikito/lua_missions](https://github.com/kikito/lua_missions)
mi [https://github.com/fuzzballcat/milliForth](https://github.com/fuzzballcat/milliForth)
demo of [https://github.com/scrussell24/grimoire](https://github.com/scrussell24/grimoire)
"the missle knows where it is" lol
"you have to encode knowledge into a format the computer can run.. "
rwriting languages model time in terms of rewriting steps
"Potters do not outgrow clay"
"cant lose sitght of what it means to be a trade"
"get rid of unneeded structure"
"connect with people not doing what youre doing"
"dont build factory factory facories "
[https://andrewwalpole.com/blog/an-introduction-to-robust-first-computation/](https://andrewwalpole.com/blog/an-introduction-to-robust-first-computation/)
"lambda calculus wasnt' buitl around io"
[https://t2tile.com/](https://t2tile.com/)
prolog, clips, common liso rule engine, sponsored by jpl
[https://www.clipsrules.net/](https://www.clipsrules.net/)
"forward chanining logic languages"
[https://en.wikipedia.org/wiki/Forward_chaining](https://en.wikipedia.org/wiki/Forward_chaining)
rewriting -> prune knowledge base
"go tot he wiki in 2 days when ive had some sleep"\



Abnewr "a conference should offer a buffet (of ideas)"

Half-Edge 
https://half-[edge.handmade.network/](edge.handmade.network/)
https://half-[edge.xyz](edge.xyz)
[https://handmade.network/m/acegikmo](https://handmade.network/m/acegikmo)
"blender is the vim of 3d modeling. its obtuse but once you learn it, its prtty good"
"i was exposed to more than 13 min of blenders UV mapper, those are lethal doses for anyone who likes UV modeling.. its bixarre to me as attool dev that there are so many lowhanging fruit to improve the UV editor of blender, need plugins - the builtin one doesnt do these. as a tools dev I knowhow to implemnt - basic things - select vetices and line tem up tothe left.. trivial to implement... "
new title bars


6502 The Spreadsheet
amaing 


Proficiency Patterns & Play - Tomas Diaz
[https://www.kcse.com/](https://www.kcse.com/)
[https://www.42network.org/](https://www.42network.org/)
radical transparency, radical truth, your ego gets destroyed, everyone's grade is public, teh admission process was a full month, 200 students to 50, 45 got in. 
[https://tomasdiaz.dev/about/](https://tomasdiaz.dev/about/)
ttps://[joelgrus.com/2020/06/06/ten-essays-on-fizz-buzz/](joelgrus.com/2020/06/06/ten-essays-on-fizz-buzz/)
quaternions
good slides
moving skides nice
"flags are great for looking at" 
exponentional maps, clifforerd algebra 
hop vibrations" 
[https://en.wikipedia.org/wiki/Clifford_algebra](https://en.wikipedia.org/wiki/Clifford_algebra)
[https://en.wikipedia.org/wiki/Quaternion](https://en.wikipedia.org/wiki/Quaternion)
"only you can be the final judge of whether you understand"
"more understanding is 98% worth it"
poem walt whitman learned astronomer

search and rescue
machine learning models to predict where lost people are! woahh
almost fave talk yet
APP / find coodinates
this part may be my fave talk yet
[https://optuna.org/](https://optuna.org/)
Last Model Motivation - PPO
MapScore what a name
need a good meric, need a way to score the model
expected proportionn of cells one would ahve to search before findign the subject
R proportionalal gain over random searching
you just want to know where the highest liklihood is]
elevation data works well but not when flat
"the representation and transportation of data is often more valuable than the data itself"

3d, just scanned in museums
holo lens
"we got really into it" 
scan hotel room
office
"streaming points is hard" "this is a very active field"
MPEG - TMC2 Video Codec Based
[https://github.com/MPEGGroup/mpeg-pcc-tmc2](https://github.com/MPEGGroup/mpeg-pcc-tmc2)
compression fast is different than compression slow
"we jumped the gun" use somethign complex. no do somethign easier
"not easy to use, and veryvague, and trying to be purposelyvague, ou end up withthigns not working"
"at least you painted a face. it may not be in the right place, but you painted a face"
"even if u know youll have problems, get the done one in first, uncover unknown unknowns"




Talk - Elizabeth Baumel
"good times with pile o gpus" lost talk
"the world is problems. the times are Now, the times are Bad, what will you do?"
crows!
[https://thatsnomoon.com/](https://thatsnomoon.com/)
very impressive resume
[https://www.linkedin.com/in/elizabethbaumel](https://www.linkedin.com/in/elizabethbaumel)
profiling code
"all models are wrong. ome are useful" 
good slides

"it is always morally correct to ask why"
"why do you program?" - to keep certain complex things alive. why. "some things go away that are good" "why?" "entropy" "something in the universe are good" 
"to make enough money to live comfortably" - programming - liked video games when teenager - why like video games? why. social bonding experience. 
"some software protects peopels wrights or gives hem the agency to respec tpeoples riht" "some ppl make software that doesnt respect pls rights" 
"because i lie uit" w "satisfying to solve prolems", 
"something i can do no matter my physical limitations" w "never good at anything, then code good", first laptop, make computer hibernate, bash scripting, nothign bad happens if you screw up, no one yelled at me" 
"enough interrogation of audience" 
chat - 

good practice for problem solving outside comuter... 
"fact impact question:"
"if ur going to work w other ppl, gotta comm with them"
message source, encoder, channel (noise), decoder, message reciever
communciation - same info on the other end o the pipe

possible to be too junior to know how to ask the question. think about what you know, what you're mssing,. what your objective is. if u just dont' know, titally lost, say so to someone. do that. 
"if u feel the need to rprovide tha made up answer, simply do not!"
"most ppl people will accept that as a valid answer and if they dont then they need to chill" "I dont know is a valid answer" 
"it can just be using your stick to get he little snack out of the tube!"
two carrot cakes out of one carrot, omg
icetigris on bluesky

Demo - Way of Rhea
rust and zig as buid system
puzzle games
talos principle
baba is you
[https://softwareyoucan.love/](https://softwareyoucan.love/)
[https://gamesbymason.com/](https://gamesbymason.com/)


Demo - Whitebox Systems
[https://whitebox.systems/](https://whitebox.systems/)


Wrapup

Meetup runners show up
france, NY, detroit, DC, __ (boston?)

writing his own [meetup.com](meetup.com) as a commandline program lol

museum

tomorrow friday 2pm Flatstick Pub. 

7pm "private afterparty" see chat server

"this is a fancy conference just like GDC" lol"its just me its just me" lol
ticket sales cover operating expenses. donorbox

"exposure to likeminded friends" 
"yoru ticket i not just fo the conferene but I will help u find a job"
[https://donorbox.org/handmadecities](https://donorbox.org/handmadecities)


HYTRADBOI - Indie Conferences like HMS
