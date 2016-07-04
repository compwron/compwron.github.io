---
layout: post
title: "ChatOps Notes"
tags:
 -
---

## What is ChatOps?

ChatOps is the practice of performing actions and checks from a chat client in a shared team chatroom. For example, checking what version of an application is deployed to a testing environment by typing a message in Slack/HipChat/IRC/etc.

## Why is ChatOps useful?

ChatOps is useful because it requires and forces automation. You can't deploy via chatops unless your deploy is automated. ChatOps is useful because it surfaces communication about important processes to the entire team; for example, anyone who looks at your chat room can scroll back (or search) and see when UAT was deployed, to what version of your app, and who requested the deploy.

## Example Use Cases

- Causing actions
  - Deploying to a testing environment
  - Adding a comment to a card (in Jira/Trello/Basecamp/etc)
  - Creating a card
  - Paging someone
- Checking things
  - Checking what version of an app is deployed in a particular environment

## Important questions

- Is it ok for your chatbot to make changes to your production environment? Answer: Maybe. You want to prevent people from affecting production by accident and not knowing that they have done so. You want to prevent malicious actors from affecting production.
- How does this work with SOX compliance? Answer: apparently very well but I haven't tried it personally. I will hunt for the link. Send them to me if you have them.

## References:

- [HackMIT](http://www.anishathalye.com/2015/12/22/chatops-at-hackmit/)
- [StackStorm](https://stackstorm.com/2015/12/10/chatops_pitfalls_and_tips/)
- [VictorOps mini-book](http://download.wiley.com/ChatOpsForDummies/15615)
- [Business Insider on Slack](http://www.businessinsider.com/chatops-blockspring-atlassian-and-ibm-push-the-api-market-2015-11)
- [MarketSpace](https://medium.com/@MarketSpace/chatops-meet-compintel-65d3e55c30d4#.6baz41yuz)
- [VividCortex](https://www.vividcortex.com/blog/8-reasons-why-chatops-isnt-working-at-your-company)
