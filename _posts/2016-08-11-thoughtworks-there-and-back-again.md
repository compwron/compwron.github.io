---
layout: post
title: "ThoughtWorks: There And Back Again"
tags:
 -
---

[The title is a Lord of the Rings (LotR) reference](https://en.wikipedia.org/wiki/There_and_Back_Again_(disambiguation))

This is the outline of a talk about working at TW, leaving TW, working at some other places, and working at TW again.

ThoughtWorks: there and back again

- why I left
   - project (not travel!), unsought really excellent opportunity
- why I came back
  - I missed y'all!
  - the startup I was working for was in the process of shutting down and my team was all openly talking about their interviews
  - I wanted to travel and teach TWU :)
  - I had several good offers and that made me feel free to choose what I want

- things I wasn't expecting:
  - having a boss (like a real boss, like in charge of me)
  - keeping in contact can feel weird

- things I learned:
  - not all companies will even try to pay you fairly
  - companies other than TW can be great at agile
  - really really good tech practices
  - team norming over *years*
  - empathy for client devs
    - being motivated to learn is structurally hard at a product company
    - talking to/joining other teams is structurally hard at a product  company
    - people leaving/joining teams normally Very Stressful
    - work event culture is structurally different
  - being on call and designing software for production
  - money faucet analogy
  - fancy offices/perks and why they made me feel weird

- awesome things about coming back to TW:
  - "Welcome back!" over and over and over :) :) :)
  - Found a few bugs / become a TechOps demo

- things that feel weird about TW to me now:
  - Some things change, some things stay the same (and you have no idea which are which)
  - Isolation, lateralism, hearing myself say "the way my OLD team did it"


  ### long form

  What I learned

Okay so keep in mind that I'm talking about some non-TW companies in SF, and only a few TW offices- all in the states- so this is not universal.

A lot more empathy for client developers, on several [axes](https://en.wiktionary.org/wiki/axis#English)-

These thoughts are probably mildly disconnected- I didn't try to make a story arc. This is intended for an audience of people who work at ThoughtWorks so it may or may not make as much sense to other audiences.

There are product teams, and consulting teams. Product teams develop and maintain a product. TW consulting teams might develop and/or maintain a product, but the team members don't work directly for the company that makes the product, and the TW consultants are usually not on call for the product in production.

 On a product team the product is like a money faucet. As long as the faucet is on, everything is fine. A production issue is a huge deal because it impacts the money flow- not just for the minute or hour that the prod system is not working correctly, but in customers that will hear about it and never come us your product because now they perceive it as less quality or less reliable. A consulting team's "product" is the skills of the team members (insofar as the specific skills are perceived as valuable by the product company), and developing this "product" just means increasing the (perceived) knowledge & expertise of the individual consultants. This means that there is a very big difference between the underlying motivational structures of these two types of teams.

 At a consulting company, there is a strong correlation between employee training and money flow coming into the company, because the product is the skill and learning speed of the people. The product is us. And the benefits for me as a product are pretty great, because the things that I want- to learn- are pretty aligned with that.

 As a developer on a team at a product company, the chain of causality between me improving my skills and the company doing better- increasing the width (number of users) or flow speed (amount of money per user) of the money faucet- the chain is a lot longer. There are two more steps- which is a lot in human cognition. (The additional steps are- I learn more, I become a better contributor, maybe that enables me to make some kind of improvement to the velocity of development of the product, or to the robustness of the product. Then, maybe, the money coming into the company will increase. This will take weeks if not months or years.)

I learned more empathy for client devs. These are people who have been on the same team with the same teammates for a long time- in many cases years- with- and this is the important part- a strong expectation that if something changes, that is Unusual. On a TW team, it's not unusual for someone to roll off a project and go teach at TWU, or take a longer vacation and need to be backfilled. It's cause for celebration and rolloff parties. It's not something that managers discuss behind closed doors and decide how to tell to the team. In a product team- well, in the product teams that I have seen, which admittedly is like five or six- if a teammate is going to leave, it's a Big Deal. Two weeks notice minimum. Lots of coworkers asking you cautiously what you're doing next- and pointedly not asking whether you got fired (or punishment-transferred to a different team), or whether they will get fired, or whether you found a better company and what is it. There is disloyalty implied in leaving a team at a product company, even if you are only leaving to go to another team at the same company. At TW I have not noticed anything that I would call "expected team loyalty" whereas I have seen something like that at several client sites- when I roll off of a team, a client developer might say- "but wouldn't you rather stay with us?". TWers are more likely to say- "it was great working with you! I hope to work with you again!" They might also say "but we neeeed you" but that's considered a failing of the team- maybe they have too many silos or not enough backfills.

Product teams are more prone to having silos because you have the infinite future in front of you- again, because of the assumption that change- dramatic change, with people coming and leaving from the team- is Unusual. There will always be time to learn what some other person knows- it doesn't have to be today, because no one is expected to roll off anytime soon. (What about vacations? Vacation culture variance is pretty weird too)

Rolling off is such an interesting term- it strongly connotes that while someone is leaving a team, they're not leaving TW. It's more precise than "leaving".

Most code that someone cares about- most code that operates in real time- managing train bookings or restaurant table management or buying things online- has someone on call. Even overnight batch processes frequently have someone on call, if they're business-essential. Having been on call in two different organizations (outside of TW) taught me a lot about the emotional and intellectual preparation that go into deciding how to monitor, what to monitor, who to call, what they need to know, and what they are authorized encouraged, required to do- at 2am or 4am or brunchtime on Sunday, you are required to drop what you're doing and fix a Very Important Thing. You can't turn off your phone at the movies. You literally always have your laptop near you. No road trips without cell service. If you are on call, and you don't ack (acknowledge) your page at 2am, it wakes up more people- possibly a *lot* more people- and then they have to figure out how to do what you were supposed to do. And they are worried and anxious because Something Is Wrong and it's probably not an hour of their day that they wanted to devote to your job, and then you feel terrible and certainly there is an implication that if you can't be relied on then they might have to fire you- because taking you off the rotation would be rewarding bad behavior.

When you have to escalate a page, that can be exciting too. You ack the page, and try to figure out what's wrong, and ask questions and post updates in the team chat channel or email list or whatever, and eventually you realize that it's still broken and you have no idea how to fix it and the money faucet is draaaaaining away and eventually if you mess this up badly enough your boss and your boss's boss and all the way up will have to explain to various people why you weren't good enough at your job to fix this thing. So that can be stressful.

There are many different ways to do agile. There are teams- outside of TW- that in my opinion are more agile than most TW teams- or rather any TW teams that I know about- because they looked at agile techniques, and took the ones that worked for them, and tweaked them, and had retrospectives and then tried to adjust. And over time- months and years- the team normed into trusting each other and communicating very well and being hugely efficient. (sometimes)

Teams that are incredibly normed. The kind of norming that take not weeks but months and years. They might not like each other as much as I like my team, but they are really really familiar with each other's approaches, opinions, and working style. And wow do they know how to get on each others nerves, because they have a lot of practice.

Many places outside TW have really ludicrous benefits for developers. free steak and salmon and sushi for lunch every day, fresh-made crepes for breakfast as a treat, day cruises as a team treat. A rotating panoply of arcade games in the lobby. Honestly that made me kinda uncomfortable. I'm not a king or a movie star; let's spend this money on something useful. Thousands of dollars a day for fancy food- and not necessarily what I want to eat that day anyway. Spend that on the community, or on charity, or give it to me in my paycheck and let me pick. I think that there is a real practical reason for having snacks and coffee and drinks on hand in the office- no one works well when they're hungry or under-caffeinated. It's nice to not have to go out to hunt and gather if you're in the middle of something. Civilization is great.

When I was not traveling and not doing 4x10s, I did a lot of things. Museums, biking, restaurants, volunteering. And that was great. I also really really really love the ability to work hard for a big chunk of hours, go out to dinner with my team, and then close myself and my introvertness into a hotel room and not feel pressured by a thousand things.

It is real at many product companies- the slow slide of motivation because learning and volunteering are not always what's valuable to the people around you, and humans are herd animals, and you try to accomplish the goals that your peers and manager value. If someone says "why are you doing that instead of yanno important work?" when you talk about your P3 side project... that, in aggregate, can be very discouraging. Of course it won't shut you down all at once, not entirely- we have willpower and determination and drive- but over time, the sucking away of that external validation can have a solid downward effect.

One thing I was very very proud of was creating a "Women@[Company]" chat channel and making it into a thing. I added literally every female name that I could find. No one gave me crap for it. I did this because there were very few women around me and I was uncomfortable about it. I don't feel the need to do this at TW because I don't feel as alone. :) While I was in there I also created LGBT@[Company] and Black@[Company] but I didn't push them as hard because- I didn't want to tread on any toes I guess. I didn't feel like it was my place. But I wish that I'd had someone from one of those groups that I could talk to about it, about whether it would be helpful to them the same way that the Women@ channel was helpful to me.

I spent a lot less time with coworkers outside of work than I do at TW. Obviously a big part of that is the travel- there aren't that many people that you know in a strange city other than coworkers maybe- but also company culture. I kind of hate the words company culture, because it feels- ephemeral. Undefinable. It's the kind of fluff that makes me put my consultant interested face on. I am not currently interested in books about company culture and how to shape it. But... there are some big and meaningful differences. At TW, it's not unusual to send an email to the office saying- hey, let's all go out for lunch or drinks on a particular day because some coworker is in town. And when that invitation comes out, at TW it's totally okay- totally normal- to not be able to go for whatever reason because you have to go to dinner with someone else, or you're tired from traveling, or yanno you have life stuff. At some companies, outside-work events are so rare that they're almost always semi-required. You have to phrase your excuse plausibly and there's more pressure, because the event is rarer. Because there are fewer people on the invite list (think 20 instead the usual TW all-office hundred+), the event is scheduled further ahead so that more people can plan to be there.

Teams. Teams! At TW I know lots of people who aren't on my team- and not just because we used to be on a team together. Because everyone knows that what *you* are doing today could be what *they* are doing next month. Because it is usual and expected to switch teams. In many companies- that is utterly not normal. Certainly you could do an internal transfer, but it takes a lot of work. Mot people don't do it. It's an unusual case. Why would you get a transfer? Maybe you don't like your team, or they don't like you. Maybe you want to work in a different office or have different hours. Maybe you want to use a different tech stack- but in that case, they'll have to interview you, because you might not be qualified. At TW, what makes one qualified to join a team is very different. I have joined teams that I was deeply unqualified to be on, because one of the best ways to become qualified is to yanno actually do the work. that's why we have tech leads. I am so unqualified that my only qualification is being really good at learning, and that's pretty much all we need. Because this industry changes a lot- and we see more of it at most, because we are usually brought in when something needs to change. Relatively few TW teams are maintenance teams- we're too expensive for that. [There's an entire consulting company that does that!](http://corgibytes.com/) It requires a lot of skill but the people who run businesses sometimes don't prioritize it- they let their money faucet slowly get rusty. Maybe they have new faucets coming.

On a maintenance team- which I have been on- well, we still added new features, but the vast majority of our work was fixing bugs that had come up in production- weird new edge cases- improving speed and reliability- and adding new features was a nice treat. It's a very different feel than working towards production.



