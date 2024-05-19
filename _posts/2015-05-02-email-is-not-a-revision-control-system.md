---
layout: post
title: "Email is not a revision control system"
tags:
 - startups
 - conference
---

"Email is not a revision control system!!" someone said to me at a [Karmic Labs](https://karmiclabs.com/) hack night

But I said- because I am trying to train my brain to pattern-match statements like "X is terrible" with "think of solutions for X"

Well, gmail has an api (and there is [a rubygem for that](https://github.com/gmailgem/gmail)), and you could write a plugin- or set up a forwarder, that would be less invasive- to a system which could accept emails and understand what document it was by comparing it to previously recieved docs, and there are good libraries in java and in ruby (probably also other languages) for parsing microsoft documents, you could probably get the annotations out of them, and then you could write a thing that turns them into git patches and programatically autopush the diffs to a repo, and then you could just hook your usual git workflow up to that. You'd also need to write something that turns git pushes to the repo into word doc annotations and email them back to the doc originator- possibly batch these and put an approval process on the eamil, to make sure you don't have weird artifacting- but it would be SO MUCH EASIER! Admittedly at that point you would have to pivot and make this thing your product instead because it would take a lot of developer hours...

