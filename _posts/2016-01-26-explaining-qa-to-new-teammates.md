---
layout: post
title: "Explaining QA to New Teammates"
tags:
 -
---

## Context:

Team X is part of a large organization where there are employees whose role is "QA". There are no people with the role QA on team X. The question-asker is a new junior developer on team X.

## Question:

"stuff is pretty OK so far. you could help me know what QAing actually means
my thought is 'push to staging, try to break it'"


## Some recommendations

- Definitely put it on some environment
- Test the happy path first (happy path is "if everything works as expected" also known as the primary revenue-generating path so if I were testing login I would first test that trying to log in with valid credentials works)
- Super important- keep a record of what you test, including the stuff that works
- Test that you recieve the correct error messages for wrong values / user actions / invalid data.
- If you have airbrake/splunk set up you can look and see if there is expected logging / errors
- "this sort of thing miiiight be better done with a test suite, but we don't have a QA test suite" You could write one test in a brand new test suite. The first one is always the hardest because it doesnt always occur to people to do it. Also because you have to set up the framework etc
- "What do you mean by QA test suite?" "I mean tests besides smoke/unit/integration/acceptance"
- I recommend asking your team in open chat what some things to check for during the QA process are. They can argue it out amongst themselves and you can take the best parts and do them as they discuss.
- Is it regression or exploratory testing? "in general, automated testing is good at catching regressions and humans are less good at it. Humans are great at exploratory testing i.e. breaking the app in new exciting ways, finding new bugs etc. New bugs that have never been tested for before

## TL;DR

When QAing a story, what should I be looking for?

- logs when it should
- doesn't throw exceptions into airbrake
- happy path functionality actually succeeds
- correct error messages when the user does something wrong
- ???
