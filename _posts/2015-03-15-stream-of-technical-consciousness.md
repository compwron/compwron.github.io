---
layout: post
title: "Stream of Technical Consciousness"
tags:
 -
---

Below you can find some (sanitized) day-by-day notes from my most recent employment (primarily large rails project, with some iOS and golang). Some days are missing because I forgot. 

If you find anything which you believe should not be posted or which you think I may have posted by mistake, please make an issue at [https://github.com/compwron/compwron.github.io/issues](https://github.com/compwron/compwron.github.io/issues)

The vast majority of this is uninteresting unless you are particularly intrigued by my thought processes or onboarding at the company in question. 

This will be posted in chunks as I check the original for things that are inadvisable to post (names, some urls, code snippets)

Why post this? Because the possible downsides sound implausible to me. Possible downsides that I have considered:

- People will read it and think that I am a doofus (Rebuttal: Caring about this is not useful and makes me feel horrible. So I don't.)
- Someone will freak out at me about blogging company-private stuff (I have tried to not do this. If you see a problem, [file an issue](https://github.com/compwron/compwron.github.io/issues) and I will look at it.)
- This will be incredibly boring and people will judge me for posting it (See above)
- My future potential employers will read it and decide to not hire me because I do things like this / my revealed thought process shows that I would not be a good employee (Rebuttal: It is probably for the best that we all know this. Also, it sounds like the kind of thing that is an irrational fear)

Recently learned from pondering about these notes:
- Keeping runbooks (for prod recovery things etc) in github is better than keeping them in wikis, docs, hackpad etc. (Because runbooks are code which is executed by humans, and it is important to be able to version-track these things. Pull requests are also useful.) People who are editing runbooks without knowing how to use git can use the github enterprise web interface, or some other custom tool. Or they can learn In my opinion, it is not likely and getting unliklier that technical people responsible for disaster recvery will not know how to use a basic development tool. 


=========


Day: 1 (Weds) June 25, 2014

Victories:

- Pushed code! (actually just a file ending fix to the "bt radar", an internal what-tech-are-we-using-not-using-where-why-whynot github reference. I actually really like this format for developer usage (rather than the TW radar which is much prettier and also semi aimed at nontech/post-tech audience)
- Access permissions
- Got to hang out with my "spirit guide" (onboarding mentor)
- Got swag!
- Onboarding clonable Trello board for the win

Learned:

- My brain exploded
- Slack (ike enterprise irc - also what BC uses instead of a software-dev mailing list or myTW_Women etc, cycling interest group) is actually pretty awesome
- Sonos (tool for jukebox in office, multi-device) is also actually pretty awesome
- Free lunch is even more awesome than I'd thought
- SF office has la croix instead of soda. Also apparently an addiction to Kind bars. 
- Internal wiki stuff
- Biking to work will work. Yay!!!

Questions:

- All of them
- When does the code happen?
- Why is the answer "wait for the gateway session" ?

Day: 3

Victories:

- Zommmg sushi day because of townhall
- Attended team event @ Tech Shop, then at bar down the street. (wtf was that one guy's deal?)
- Chatted briefly with senior tech buys at BT early on Fri morning
- Raided t-shirt storage room, now has infinite swag (this is normal and allowed)

Learned:

- Townhall meeting videoconference with Chicago
- Started sample app integration (this is code but doesn't count as "coding" to me because 1. copy-paste and 2. not useful to BT except to have me learn stuff)

Questions:

- When does the code happen?

Day: 4 (Monday 30 June 2014)

Victories:

- Actual pairing & coding on a thing for an upcoming deadline! 
- Said some things about the code that were useful to my pair

Learned:

- Monday is SF all-office standup, then team standup
- Monday is veg day. Weds is salad day. 
- taproot gem (this + some private code is used for internal testing; might someday grow into being used for external sandboxes?) https://rubygems.org/gems/taproot
- Good view of how the architecture and call sequence works of merchant to BT to payment processor
- Running rspec tests from vim in a tmux window "just works" using a combo of vimux (https://github.com/benmills/vimux) and some rspec vimux integration. Not using hot reload (Spork) because sometimes it is buggy. I am told that BT engineering prefers to use non-buggy tools over sometimes-buggy-and-faster tools. I am totally happy about this. 
- Had "BTU 102" session (history of BT) with some other recent hires in the SF office.
- Made a personal diagram snapshot so I can learn names (my name learning style works really well with this diagram style- I should have paused and done this earlier)
- OpenStruct (core ruby) http://www.ruby-doc.org/stdlib-2.0/libdoc/ostruct/rdoc/OpenStruct.html is awesome and good for decoupling (need to look at more usage)
- Crypto nonce (and that it's rude in British English) + some of how it's used in BT stuff https://en.wikipedia.org/wiki/Cryptographic_nonce
- Deferred nonces & why 
- more vim&tmux magic
- use rubygem Pry for debugging (seen this before)
- ruby .detect
- :Ggrep - vim shells out to git grep
- "bundle gem <gem name>" takes you to root dir of gem
- processor response codes
- reject (gateway merchant-specific rules) vs decline (processor) - link to BT doc here?
- rake db:do_over
- Coffee shop Cento is in an alley. Also delicious. (Afternoon coffee trip)
- There is now a developer who is newer than I am! (He started today)
- There is a deadline coming up. We are not freaking out or working late, but there is prioritization. 
- Docs are hard

Questions:

- I should finish up my onboarding Trello cards (some pending access permissions, some "write a sample app integration" stuff) ... when should I do this? (Coding is so much funnn!)
- render_jsonp whaaaat
- I should learn more about composed error codes in the BT codebase
- Oh god oh god using vim & tmux is not working yet for my fingers. Must practice. - 

Day: 5

Victories:

- made useful hash merge suggestion
- some hands-on coding
- pushed 3 commits for 3 cards with pair :)
- Lots of pushback in BT against an objectionable website which I have heard of  transferring to BT
- Reported a typo on https://venmo.com/info/security (it had already been reported, and it got merged today- deployed sometime)
- Got access to more internal repos so I can see the pull request!
- took ownership of getting sad dev box working again, completed successfully and in a timely manner
- learned lots!
- enjoyed: hilarious impromptu internal hubot survey for naming new dev boxes

Peeves:

- "PayPal freezes account of email encryption startup ProtonMail"
- Apparently an objectionable website which I have heard of before is transferring to BT (name of website is probably not good to put on the internet in any way)
- out of order errors config file (doesn't matter to anything except convenience of adding new ones)
- virtualbox breakage because of foot power cord took a while to recover from
- I sad vim/tmux script fail :( - on github soon?

Learned:

- BTU 103 : Industry overview
- g; # goto last edited location
- yiw # yank in word
- \rl # run last rspec test
- \rb # run buffer
- when to use ressh 
- rc = rake commit for push https://github.com/pgr0ss/rake_commit
- btg shortcut is awesome
- :Copen # put output of :Ggrep in buffer
- pending tests and stuff about them, rspec3 changes
- Struct!!!!! http://ruby-doc.org/core-2.0/Struct.html
- "mojule" - like "clazz" - variable name for holding a thing whose name is a keyword

Questions:

- spec/unit is deprecated in favor of functional? iiiinteresting
- Can we opensource the hooks codebase for trello/enterprise github integration?
- hubot scripting is cool... 
- why ressh is needed and how it works
- should/do/? has internal rubygem host?
- pairSee probably will need modes to analyze this codebase log. Should I do them?- 


Day: 6

Victories:

- I talked in slack/sdk for the first time!

Learned:

- BTU 120 (product + dashboard overview)
- trial period = negative option billing
- rails initialization order http://guides.rubyonrails.org/configuring.html Question: Why is the <X> file named `00_<X>.rb`? Answer: load ordering, 00 guarantees that file is loaded first.
- BTU 215 (PCI compliance)
- Stuff:
- Ubered to work today because not feeling great and transit is hard. But usually biking is great. free lunch is great. This is a much cheaper job to have. 
- Sinus headache- 


Day: 7 (Thurs)

Victories:

- worked on pairing station from my laptop via tmux, made meaningful changes
- logged into the place that you can deploy to QA from, learned command to use to deploy to qa
- fixed a test! independently! routing in docs for default language. 

Learned:

- https://rubygems.org/gems/anemone for spidering websites, even local/internal
- docs stuff
- {{linkTo}} + "null" when leave off 'text'
- warp setup??
- More vim/tmux familliarity - I'm actually kind of at home how
- the 'blue' chat room is where it's at
- How to move window sizes in vim: C-a < or C-a > (larger or smaller)- 


Day: 8 (Mon, 7 July 2014)

Victories:

- biked to work today! Even not feeling 100%. 
- bike room key acquired
- reported permissions bug in ios readme to M
- I have a team and a card!
- iOS stuff today!
- solo pushed link fixes in docs

Learned:

- cocoapods repo
- ios url schemes for inter-app communication, x-callback-url
- http://www.programmableweb.com/news/charge-credit-card-ios-app-izettles-new-api/2012/07/06
- <sample merchant app name>.heroku.com
- __unused in objective C to prevent warnings (probably used with frameworks/metaprogramming)
- BT demo app iOS stuff
- pragma mark for making xCode show you prettier headers http://iosdevelopertips.com/xcode/xcode-and-pragma-mark.html
- howto get to "compliance training" in HUB
- agile tortoise http://agiletortoise.com/- 


Day: 9 (8 July 2014)

Victories:

- met other recruiter at lunch, 35% of current SF BTreeps have worked at TW at one point

Learned:

- iOS mutable copy
- iOS checkbox for adding a file to a project
- 3d secure "verified by Visa" https://en.wikipedia.org/wiki/3-D_Secure
- scheme vs schema http://english.stackexchange.com/questions/40702/difference-between-scheme-and-schema
- Stuff:
- Biked to work! Took extra time for new route. 
- Stuff to do as the useless half of a pair: typo-check, learn, derail rabbit holes
- Wasn't sure whether to go to the <team> standup
- Human1 reverted one of the commits by me and Human2

Fail:

- Don't interrupt people


Day: 9 July 2014

Learned:

- http://en.wikipedia.org/wiki/Bonjour_(software) https://developer.apple.com/bonjour/index.html 
- Background Nearby Venmo
- http://www.certificate-transparency.org/
- http://dev.chromium.org/Home/chromium-security/crlsets
- https://developer.apple.com/library/mac/documentation/Cocoa/Conceptual/KeyValueCoding/Articles/KeyValueCoding.html
- canopenUrl
- how do iOS controllers work?
- joota = "shoe" in (hindi?)
- https://lobste.rs/
- http://www.producthunt.com/
- Stuff:
- Today was the big deploy day for V.zero! Cupcakes and champagne and watching the android dev pair fight with mvn central sonatype sync. 
- Lots of stuff with xCode that should have been easy. Caching etc. 
- File permissions??
- fast standup
- short session at end of day- they used to do too many on sites, now they are doing too few. Need to accept more juniorness in developers? Or to let more possibly-junior developers make it to onsite. 
- venturebeat conference sounds cool

Questions:

- oh gods what am I doing and how does iOS work. 
