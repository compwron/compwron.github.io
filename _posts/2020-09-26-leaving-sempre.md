---
layout: post
title: "Leaving Sempre"
tags:
 - company
 - work
 - leaving
 - sempre
---

For a while, I worked at a tiny startup. When I joined, there were 13 people, 4 of whom were developers (not including the CTO). When I left, there were again 3 developers (one had left, one had joined- just like others came and went before I joined). When I left we had 22 people! Very cool (mostly growth in the calling patients&pharmacists "Ops" team)

It was my first full-time python job (after years of experience in mostly java/ruby with a little bit pf python scripting here and there), which was nice. I like python- it's easy to get used to and it's a good language to have expertise in. Getting used to SQLAlchemy expanded my mind in a new way- I've worked with Java Hibernate and Ruby/Rails ActiveRecord, and it's similar to but different from both of them. I find pytest to be more straightforward but less powerful than RSpec (kind of like minitest but... different). Pytest reminds me of JUnit actually, in the way that naming of tests is just method names. Pytest mocks are powerful and relatively easy to use, although the difference between `side_effect` and `return_value` wasn't immediately apparent (a little experimentation clears it up).

Working in a tiny startup is freeing in some ways compared to being at a large company. Working daily & directly with a company founder was a new experience for me; obviously the degree of ownership and involvement that a founder feels is very strong compared to the average project manager or tech lead. 

I enjoyed helping the data team with SQL and python and git. I enjoyed having 1x1s with various members of the "Ops" (calling pharmacists and patients) teams, getting to know them, and helping them learn SQL and answering general career advice questions. Overall I enjoy mentoring and I snuck in a decent chunk of it. :)

It was nice of my boss to let me buy the company laptop for market value when I left (determined by getting estimates from various buy-your-macbook sites including Apple via serial number).


**Some highlights of major projects I worked on**
1. Upgrade Auth0 Authorization plugin by a major version (after-hours change, lots of prep, ultimately a non-event yay)
1. Workshop getting the remaining developers set up to run the integration tests and publish a circleCI orb
1. Building the first version of integration tests which ran three apps plus mysql, redis, and rabbitmq in CircleCI by building [this orb](https://circleci.com/orbs/registry/orb/semprehealth/integration-tests) plus a set of pytests which call test teh results of the app interactions
1. Upgrading the company VPN (OpenVPN on ec2) to have much faster traffic throughput
1. Added PR templates to all 15+ repos to encourage putting a description on PRs (and it worked!)
1. Lots and lots and lots of python and react.js code!
1. ...a lot more but I have more notes than I care to dig through right now


**Questions from my exit interview (we didn't go over all of these)**
1. How did you come to the decision to leave?
1. Main reason for leaving
1. What (if anything) could have been done early on to prevent you from leaving?
1. Any suggestions for how Sempre could manage this situation better?
1. What has been good/enjoyable/satisfying in your time with us
1. What has been frustrating/difficult/upsetting to you in time with us?
1. Did you have clear goals and know what was expected of you in your job?
1. What can you say about the way your performance was measured, and the feedback to you of your performance results?
1. What would you say about how you were motivated, and how that could have been improved?
1. How would you describe the culture or ‘feel’ of the organization?\What could you say about communications and relations between teams and how these could be improved?
1. What examples of waste within the company can you point to?
1. How can Sempre gather and make better use of the views and experience of the team?
1. What can the organization do to retain its best people (and not lose any more like you)?
1. Would you consider working again for us if the situation were right?


***The wind-down laptop / accounts plan***

(I wasn't present for most of it, but the plan was provided to me)
1. Sign a formal lawyer-drafted resignation letter (weird but I read it over and it was harmess enough)
1. Gusto
1. Gmail
1. 1Password
1. Aptible
1. Mailgun
1. AWS
1. Sumo Logic
1. SQL tables (MySQL prod + MySQL prod replica)
1. Zendesk
1. Github
1. Slack
1. Auth0
1. Internal admin dashboard dev/prod
1. External metrics site dev/prod
1. Auth0 mgmt console / tenant
1. Jamf
1. Sophos
1. Qualys
1. Wipe laptop with Jamf
1. Remove company gmail from phone (I had proactively deleted by work profile so this didn't affect me)
1. Remove Google MDM from phone  (I had proactively deleted by work profile so this didn't affect me)

I wonder whether my intellij license got deactivated? Even if it didn't, I wouldn't use it because it would be wrong to use it without permission but... that license is the software I most miss. 