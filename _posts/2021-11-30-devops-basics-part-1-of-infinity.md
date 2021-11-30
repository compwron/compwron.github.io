---
layout: post
title: "DevOps Basics Part 1 of Infinity"
tags:
 -
---

The purpose of this is to be the smallest intro to the things I want my coworkers and mentees to know. This is not comprehensive. 

## Basics

### Normal operation
1. What is blue/green deployment?
1. what are nines and why you can't have all of them
1. servers talk to each other in many ways
1. Why should configuration be code? So you can version control it. Version controlling your config is good because then you know what changed and why. This does not contradict the ability to auto-scale. 
1. What is auto-scaling, why do you want it, and what are the dangers? It's when your configuration spins up more servers when it senses load (number of users / amount of usage) is rising. You want it so that you don't have to have extra servers when you're not using them, and so you don't max out your capacity when you have lots of users (for healthtech, think the days before/after a holiday weekend are high, then the holiday weekend is low). Common dangers include scaling up very far and getting a big bill, or not scaling fast enough and having users feel that something is slow. 

#### Disaster recovery: 

1. backup everything, and if you didn't test your disaster recovery backup, it doesn't exist
1. geographical distribution for key resources (if all your NY employees are in a giant storm and have no power, you want to give oncall to someone who is somewhere else who actually has power)
1. have backup communications (if slack is down, use google hangouts or cell phones. If zoom is down, use google hangouts) - Don't be [like facebook](https://www.businessinsider.com/facebook-employees-no-access-conference-rooms-because-of-outage-2021-10)


### Other resources

1. the google book but it's long and 30% bullshit
1. [Sigje's and ryn's book](https://www.oreilly.com/library/view/effective-devops/9781491926291/) But it's 5yo old now. But it is mostly talking about cultural stuff so that ages better...
1. Phoenix Project is the traditional thing to give people, but a novel can be a hard sell, and it doesn't cover technical bits at all
1. [https://github.com/Lets-DevOps/awesome-learning](https://github.com/Lets-DevOps/awesome-learning)
1. [https://github.com/Tikam02/DevOps-Guide](https://github.com/Tikam02/DevOps-Guide)
