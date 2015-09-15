---
layout: post
title: "Enterprise Hackathon"
tags:
 - work
 - hack
 - company
---

## What is it?
An enterprise hackathon is generally a period of time when a company encourages some of its employees (usually those who know how to code) to work on "anything" for variable values of "anything" that are

1. Not one's regular work
2. Not assigned but rather picked by the employees in question, either individually or in teams.

It is a time set aside so that the employees of a company can bake their halfbaked ideas and find out whether they taste good. If they taste good, the company has the rights to use the recipe. When done well, this means that everyone gets delicious cookies.

## Why have a work hackathon?

Why do a work hackathon? To let your employees have fun building things. To encourage them to take initiative. To let them have real work time to build examples of all their crazy ideas because your people's crazy ideas frequently turn into your next big product. To encourage them to work with people in other teams, which will benefit their 'regular' work. To let them take on roles beyond their current one, which will help them learn and grow in your org and maybe stay when they would have left if they couldn't convince anyone that they could do the role that is not their current job title.

# Useful new products and unexpected gains in existing systems

Companies hire smart people and ask them to work on and think about the company's domain and products. A natural outcome of this is ideas, not all of which are mentioned to the people who set the product roadmap, for many reasons including implausibility, the difficulty of explaining half-baked ideas, and there being little or no encouragement to do so. Many of these ideas would sound pretty good and/or make more sense when accompanied by a proof of concept. Usually creating such a thing requires at least a few hours, which must be either taken out of the work day or out of personal time.

The people who build the systems and products of a business inherently have knowledge of and ideas about the system from a different angle than product; they see things that could be easy. They have knowledge from outside endeavors that could be integrated into your systems that would enable the company to reach additional markets, or that would speed up existing systems by an order of magnitude. (Like integrating with the city's published lists of liquor licenses assigned in order to find just-starting restaurants to market to, for example.)

# Reputation

A hackathon is one way to become known to potential employees as a good place to work. It is a clear sign that a company encourages its employees to create useful things. Thus, the hackathon demonstrate not only that the company lets their employees give back to the community (a common wishlist item of good developers), but also that the employees themselves are intelligent and write good code. This is useful because another common wishlist item of good developers is to work with other good developers. [Stripe has done very well at this.](https://aphyr.com/posts/326-call-me-maybe-chronos)

# Give back

Maintaining open source that your team uses is a net win for everyone. Maintaining a fork or patch internally takes up a surprisingly large amount of effort and developer brainspace. Any advantage that your competitors may get from you improving the tools that they use internally (and how do you know that your competitors use this particular library in this particular way, anyway?) is vastly outweighed by the advantage that you will gain.

Most companies rely heavily on open source tools, from languages like ruby and clojure, to tools like JUnit, rspec, rubygems, rails, mysql, etc. Although it can be a hard sell to get your company to donate money directly to the maintenance of these tools (obviously you should if you can, though), letting developers improve the tools that they use on their own projects is an investment targeted with great precision on exactly the features and issues most important to the ongoing work of that developer's team.

# Developer happiness and skill improvement

Becoming a better developer makes developers happy. This is broadly applicable to many other human activities, but it is particularly easy to notice and fulfill in the field of software development.

In development, all learning is cross-training. Learning to write iOS apps really will make you a better member of a team that develops a ruby on rails application. Writing a Node.js app really will make you understand Java JSON parsing better. The essential meta-skill, debugging, benefits greatly for variety of experience so that the human mind can begin to make logical underlying rules connections between things like "X always means Y" and "Y always means Z" to 'All things that are like X lead naturally to Z because of the way that exceptions propagate in Java, and Y is just an implementation-specific detail'. Since most languages evolved from each other, in parallel, or with the design decisions of other languages taken into account, there is a lot of cross-language learned-intuition bleed-through.

Itch scratching is "a thing". A developer who has no time to explore interesting ideas gets cranky. It's like being near a huge buffet, and only being allowed to eat things on the buffet that have been prepared by being boiled. You can smell and see all the other interesting ideas. Maybe on your own time you will go home and not-boil some food, but it would be so much less work and more interesting to sample the other things on the table.

Many developers have a pet peeve about the systems in which they work. There should be a chatbot that can tell you the status of the continuous integration build. There should be parallelization of tests in the continuous integration build. Your work tracking system should be queryable from the commandline. Whatever it is, a hackathon is a designated guilt-free time to write the code that allows these efficiency improvements.

No one knows better what internal tools need work / are missing than the people who have to use them, and it can be hard in even the best cultures to balance the demands of what you need in order to work efficiently, with the work itself.

## Companies that do this

- Google has made this famous with "twenty-percent" time. [LINK]

- ThoughtWorks encourages their consultants to use the time between projects ("beach time") to work on open source projects or other exercises to increase developer skill.

- Braintree has "open dev" on Friday of every other week, for developers to work on non-roadmap work and/or read technical materials. A lot of this work is people making internal tools or maintaining open source libraries that are used by various internal codebases.

- [eBay](http://www.ebaytechblog.com/2015/09/09/company-wide-hack-week-encourages-innovation/) "hack week"

- Groupon has "Geekon" for all developers for an entire week at a time, twice a year.

- (Feel free to submit more in a github issue or pull request)

## Common failures

# Enterprise hackathon fail 1: Offer prizes

Prizes fuck everything up. Hackathons are great unless there are prizes. Prizes totally change the incentive structure from "building cool things" to "winning" by whatever criteria are published- or, for those of us who are disinclined to compete for whatever the prize is, every hackathon discussion is now prepended by a discussion of "but I'm not competing" which, when said to the wrong hierarchy of management, can result in a stressful and frustrating discussion as you try to talk across the great divide.

Many "public" hackathons (especially for students) depend on prizes for motivation. As someone just getting into their career, it is valuable to a student to say that they have Won, and frequently the prizes are economically meaningful. Frequently, the winners of a hackathon did indeed accomplish something particularly impressive. Delivering economically meaningful prizes to software developers is possible but usually ends somewhere between impractical (tens of thousands of dollars per winner) and insulting (what, you think I do this only for money, not because I enjoy doing smart things??).

It is only for hackathons where the goal is to build immediately useful/showcaseable things, rather than to demonstrate prowess, that we want to optimize for things-built rather than individual and team improvement.


# Enterprise hackathon fail 2: Unenthusiastic manager buy-in

If the person to whom a developer reports does not specifically encourage participating in the hackathon, most developers will just keep working on their regular work because they "don't know what to do" or aren't sure that their particular management chain would approve of. This is particularly pronounced in high-expertise members of your organization who spend a large degree of time working alone or on different tasks than their team. These are the people whom you really really want to be building all the unlikely things that they can think of. If they feel that it truly would not be irresponsible to engage and build exciting new things rather than having to keep up with their regular work, the organization will reap huge rewards.

# Enterprise hackathon fail 3: Don't let everyone in / only the cool kids / some departments

If only part of the company has permission + encouragement to join in, the remainder will feel left out. Of the ones that do get to do the hackathon, the more perceptive ones will feel guilty.

The teams that do not participate will not make as many connections within the organization and new avenues of understanding and communication will not be formed during the hackathon to the extent that they will be among the other teams. If, for example, the individual/s who are responsible for the improvement and maintenance of the organization-wise continuous integration servers are too busy with their core tasks to take time away, this would be particularly disadvantageous to the organization.

You will need to make provisions in order to let those in your org who are on call or in other ways unable to participate fully- and they are likely some of your most essential people- not feel that they are getting a raw deal. They do not deserve to be left out. Maybe a team like that could do a hackathon in one on, three-off mode, rotating by day, or with a little more prep time you could add a focus on 'unmanaged uptime' and 'user elf service' to the roadmap before the hackathon for a longer-lasting improvement in team productivity.

# Enterprise hackathon fail 4: Not enough ways to brag

One failure mode of hackathon presentations is that a large percentage of software developers do not like presenting and will willingly forgo the opportunity to win a prize (that they may be dubious about the desirability of, anyway) in order to avoid presenting. However, if there were a differently appealing way of advertising one's accomplishments, then people to whom it appealed would use it.

It is unlikely that avenues of communication will naturally form within the organization in order to let hackathoners brag to each other, but this is precisely what you want. Make a slack/hipchat/irc/campfire/? chatroom. Put up posters with the name of the chatroom. Let human curiosity do the rest.

Presentations (optional!) at the end of the hackathon should absolutely be scheduled, regardless of what other communications channels have been used. For shorter hackathons, this can be an end-of-day standup for the whole office, with no more than thirty seconds (and definitely no slides!) per presenter. For very large offices, this will still work but you may need a large place, someone to wrangle people into a line onto the stage, and a microphone. Record this if you can; it may be the best way to put a face to a project.

Presentations must be optional, or- like any incentive- people will work towards it. People who do not want to present will be stressed and upset. Some of this can be ameliorated via good communication and unstresssful presenting experience, but I believe that it will inevitably go wrong- if not during the first hackathon, then during a future one. Set the precedent for optionality and hope that your successors follow.

If you are giving any prizes for the hackathon (see "Enterprise hackathon fail 1: Offer prizes" above) there will have to be presentations for that and they must be separate from the non-competitive presentations, because very few dual-function presentations serve both uses successfully.


## FAQ

- Q: Won't they just not come to work? A: Set clear expectations
- Q: What if the participants just read all day and don't build anything? A: Reading about new technical developments is useful.

## This particular hackathon

Length: 5 days M-F during work hours (weekend and evening hours were not suggested that I know of) with Monday having a multi-hour kickoff presentation and inspirational speaker, and Friday being all-day presentations.

Topic: "<Our Company> stuff" (name for topic not announced)

Goals: Create a proof of concept for new products or initiatives that the company could then adopt and take forward. Or build something useful to your team.

Food: Catered lunch and dinner (breakfast on mon/fri - presentation days)

Participants: All developers and test engineers across the company in all countries. Not Product, Sales, Marketing, or Finance. Some developers on smaller teams, including summer interns from prestigious colleges, did not participate because "I didn't know what to work on."

Rewards: I did not pay much attention. What I recall is that the winning team(s?) get their project turned into a "real" project (funded for X months by Company). This obviously requires that in order to win, your project has to be something that can be turned into a "real" project- a mobile app for example. "Fix API flakiness" while valuable and not really on the roadmap is very unlikely to win this award.

Knowledge-sharing: Really the only knowledge sharing there was, was 1. presentations on Friday and 2. Internal chatter "what are you going to do for it?" "dunno, what are you going to do for it?". There was not a much-used internal chat room in Hipchat.


## Other sources:

- ThoughtWorks on [Enterprise Hackathons](http://www.thoughtworks.com/insights/blog/hackathons-enterprise) (short, but not terrible)
- [Howto Host a Hackathon](http://www.brightidea.com/blog/how-to-host-a-successful-hackathon/) (Applicable in the planning stages, but different )
- [7 ways hackathons make AddThis a better company](https://www.addthis.com/blog/2015/05/21/7-ways-hackathons-make-us-a-better-company/#.VdjcYlNViko)
- [Likeable Local Hackathon](http://www.inc.com/dave-kerpen/3-reasons-your-business-should-host-a-hackathon.html)
- [SumAll Hackathon](https://creator.wework.com/knowledge/sumall-hackathon/)
- [Whyto Big Company Hackathons](http://www.fastcolabs.com/3030628/why-do-big-companies-do-hackathons)
- [Quora thread](https://www.quora.com/What-companies-have-regular-hackathon-hack-days)
- [Facebook/Uber](https://medium.com/@pedramkeyani/hacking-company-culture-1daa3be1d769)
- [PayPal](https://www.fastcompany.com/3029885/why-you-should-probably-host-a-hackathon)


## Some things I worked on:

1. Food Runners integration (incomplete)
2. Image composite from looking up user emails on gravitar
3. Show 'similar' promotions from other users of the product to admins, for inspiration.
4. Command-history for our team hubot (hipchat chatbot)
5. Created shared ideas list and encouraged people to use it (possibly the most useful thing I did)
6. Detect most frequent domain-specific words in commit messages (fun for the team to look at)
7. Restaurant Cuisine Guesser
8. Work with people from several teams to improve the main company website to fix a tiny broken thing that annoyed me.
9. Some interesting unusual "actual work" involving nagios
10. Gem maintenance status evaluation https://gist.github.com/compwron/cb00c2dd48712b089390
11. Pebble Watch Hello World app
12. Add colorization of sql to rails log for my team
13. Mess about with using atom.io to view and edit markdown files locally
14. Open various minor internal PRs against other team's codebases to improve READMEs and other docs
15. Added cane checker to other codebase
16. Make a jira card to aggregate desired chatbot changes
17. Wrote a tiny tiny intro to coding guide https://medium.com/@cwrompng/a-tiny-bit-of-code-1d50501a9064
18. Worked on a possible future CrumbBake (internal learning) talk about pair programming (based on previous notes) https://github.com/compwron/pairing-failnarios
19. Got access to and explored our NewRelic
