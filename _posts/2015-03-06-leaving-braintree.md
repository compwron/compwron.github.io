---
layout: post
title: "Leaving Braintree"
tags:
 - braintree leaving
---

Braintree is the first company that I have worked for that has sane continuous integration. To be fair, most of the companies I worked with previously were actively progressing towards a better state, but Braintree wins hands down.

To me, sane CI is one of the best indicators that a company has its shit together. There is a repo in git that holds puppet files that generate jenkins config that is puppeted to jenkins boxes by a capistrano command, with a no-op and then ask y/n on apply option. There are a large number of Jenkins boxes, supplemented with ec2 instances. There are hundreds and hundreds of builds (in large part, all client library versions against the current gateway master/release branches). There are weekly deploys, and some point releases.

They also use the rake_commit gem, which I have used on other projects at other companies. It prompts you for committer names (pairing!), card number (lightweight work tracking!), and a commit message (actually describe what is going on!). And it makes a commit, and rebases, and runs your tests, and pushes. 

The Tuesday of my last week at Braintree, at the request of one of the excellent BT recruiters, I met with a pre-candidate and previous acquaintence, and told her the long form of the honest truth of my opinions about Braintree. As I recall, she said something like "That sounds like amazing. I've never worked at a company that wasn't broken before." I believe this. 

"It is not terrible to be a woman at Braintree," I told her. And it is not. "They don't do outreach events, and I wish that they did- but there aren't bad things." I started at BT on a team that had zero women out of the 10 or 12 people I saw at standup every day. After ThoughtWorks, it felt weird. But no one was bad about it. My lack of video game interest and my lack of whiskey interest were not wildly detrimental. After a few weeks I ended up on a team that did more of the things that I was interested in. This team also happened to have three women on it. We ended up with four women out of thirteen-ish people on the team, which I personally think is about the best you can expect in the tech industry in a company without a particular focus on recruiting at Grace Hopper and similar events. 

One of my favorite moments at Braintree was last year when I received an email from their parent corporation eBay. "Here is your Grace Hopper ticket", the email (basically) said. "Click here to claim it." No applying, no competing, no half-optimistic hoping. Just a beautiful present, full of good intentions. 

Another favorite moment for me at Braintree was GoGaRuCo (Golden Gate Ruby Conference). "Man, I wish I could go," I said in the team room, the day before. "But I didn't think of it, and now only the expensive tickets are left." The team lead said "Will it be useful? Will you learn more about Ruby? Get them, expense them. I will approve them." And I did and he did and I think it was one of the best conferences I've been to. That flexibility was great. 

I believe in and approve of Braintree's recruiters and interview process. The product and pairing interviews reliably make it clear to me whether that a particular person would do well at Braintree. 

There are at least two HPMOR fans in Chicago and 1 (Stackmob) in SF. To me this is a major perk which I am sad to have not known for so long. 

Braintree is what I think of as "beyond agile" or "little-a agile". Their particular implementation of workflow involves a trello board to track work, daily standups, weekly iteration planning meetings, frequent conversations among developers and domain experts. Different teams do it differently, and this is a good sign that they are actually doing what works for them, rather than being forced to imitate the team next door. 

The internal RFC process is one of the more excellent things, especially for a distributed team. One person (or several people, or a team) sends out a googledoc link. "RFC: breaking out module-X from app-Y" or "RFC: Changing api-Z to do X". They send it out via email, and post it in #developers. Everyone goes and reads it, and leaves comments, and votes at the bottom, and argues in the comments, and propose alternate solutions. And if it is clear that the idea should be implemented, one of the teams (it is usually clear which) takes on the work. 

Braintree internal post-mortems are really good. They go out quicky, and they go out to everyone (internally). There is root cause analysis in a google doc, sent out to everyone to read and comment on. There are "what to change so this doesn't happen." There are modifications to the runbooks, if that is relevant. There is not finger-pointing. There is not acrimony. There is "we will do it better next time" and "we will find out why".

I love their "sanity spec". There are tests that check that the hashed of old database migrations have not changed. There are tests that fail the local build if there is a 'binding.pry' in the code. There are tests that check for N+1 database queries. 

"Open Dev" is a great draw for developers: every second Friday, work on "whatever you want." Frequently, people choose to spike out stuff related to one's current work. Many valuable features, internal tools, convenience scripts, and architectural improvements have come from open dev. Sometimes it is going to a local conference, or reading a book on advanced Postgres, or writing a technical blogpost. 

Braintree runs on Slack. Everything of note happens in the slack channels, from "@channel: cookies in the kitchen!" in #sf-announce to "@channel We have a problem; I'm looking into it; please join the call for updates." in #(the name of the prod issues channel). #developers is very useful; #devnull is very interesting. Personally I enjoyed #cyclists and hearing the accounts of biking in cold Chicago. I am glad that the chatroom #women exists, even if when I last read it it was mostly relevant to things outside my interests. I think that the chatroom #pride is good to have and has had some valuable links posted. 

I admire that Braintree revoked my email and slack tokens within two hours of my leaving the building. I admire Braintree's trello onboarding template. When a new teammate comes in, their "spirit guide" clones the onboarding board, which has items like "get slack login" and "get into google groups A, B, and C" and "add your ssh key to X, Y and Z" and "implement a toy feature X that will familiarize you with the codebase."

Braintree has a complex system of codebases, necessitated by the deep and astonishing domain which it adresses. I have seen how the payments processing sausage is made, and it is full of gritty complicated inexplicable crap, most of it presumably left over from bank mainframes and waterfall development. But I have been inside the Braintree codebases, and I would gladly use it in my future endeavors. What is supposed to be secure is secure; what is supposed to be tested, is tested. The domain may be mad; the code may have built up over the years; sometimes things are manges'd; and I trust the whole of it to make the money flow. Safely, quickly, responsibly, with forethought and forward planning and the house not being on fire. 

Why did I leave Braintree? I wasn't fired; nothing terrible happened; it was a personal choice. There are many no-fault ways to not be the best fit for a team. It also influences my decision that in San Francisco right now, a developer is employable. I am able to "go sit in a cafe and code." Sometimes you just have to go use your freedom when you have it. 



------


Typofixes, questions, factual corrections, and feedback are welcome: please file an issue on github at [https://github.com/compwron/compwron.github.io/issues](https://github.com/compwron/compwron.github.io/issues)
