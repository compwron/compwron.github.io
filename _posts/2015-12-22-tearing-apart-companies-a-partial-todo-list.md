---
layout: post
title: "Tearing Apart Companies: A Partial Todo List"
tags:
 -
---

When you separate a little company from a bigger company- even if, once upon a time, the little company used to be a separate company, before it got bought- there is a lot lot lot to do. Here are some musings on it, with a (very partial) list of items that need separating.

You will need

- A new separate AWS account, that you can slowly migrate towards. You will need a complete list of every box that you have anything deployed on, and specs for those boxes (memory, storage, throughput) so you can plan for future growth and redundancy.
- A dump of all your Jira cards WITH COMMENTS, for importing into some other system, someday. Or for text grepping.
- Your git history of the project
- All the internal gems that your project depends on
- A few recent docker images that your project has generated
- Quick, convert your (jenkins) CI system to use Travis
- Whose user auth endpoint are you using? Build a new one. Capture the hashes/credentials and store them securely, so you won't have to force (most of) your users to change their passwords.
- pagerduty
- Hipchat (but maybe not your chat records, because they're not super useful via search in hipchat anyway) Switch to slack??? Plzzzz?
- All of your server config files (although honestly with docker maybe you don't need them anymore??)
- You will need an email system. Will everyone's email addresses change? Probably.
- iOS app publishing permissions group
