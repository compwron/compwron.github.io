---
layout: post
title: "Utility Host"
tags:
 -
---

In software, "utility host" or "utility box" frequently refers to a machine inside of a corporate network which is a place where developers can do things like look at data in production, analyze some weird issue at the data level, or grab some data into a sensible format. It is preferred to do these things by connecting to the utility host and then from there connecting to production console (rails or mysql console, in my team's case), so that all the sessions are on the utility host and everyone knows where they are and can see them. You can set it up so every time someone creates one, a notification is sent to hipchat/slack.

Using a utility host can be part of an anti-pattern, but it is a step up from all developers doing utility box type activities on their own local machines, because using the utility host provides increased visibility and repeatability. Developers who are new to the team do not need to get their own machines set up like the utility box before being able to do important tasks, if there is a utility box.

The number of utility boxes does need to increase along with the number of developers, if everyone will need to use them, although since most people will not need to be using it at the same time, the number does not have to be a direct correlation.
