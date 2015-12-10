---
layout: post
title: "Features of Features, with Rails"
tags:
 - company
 - code
 - talk
---

This is, of course, in reference to a specific system. But it is also a flight of fancy, a backfill-redesign, a "How I would do it from scratch, although of course we never can- maybe next time-"

Once upon a time, long ago and far away, there was a feature for a software project, called "Feature Feature". This is because it was a feature about feature toggles. These were not any old feature toggles. There were exactly twenty-eight of them, although there were more (and less!) later, and they did all kinds of things. Most of them were stored in the database of the big old Rails application that lived in the hills. they were sent along with all the other object through the Woods of Packet Loss down the river to the big city of iOS Client, which is a strange city name but they liked it there.

# Requirements

- Enable/disable a feature without deploying
- Granular enable/disable per Tlo (top-level-object, i.e. Merchant, User, Venue...)
- Polymorphic (more than one type of Tlo can have features, i.e. GoatMerchant, CatMerchant)
- Works with ruby on rails (although the principles are extractable)
- Must be pre-enable-able, for usage by non-update-able clients like an android/ios app

# Assumptions

- A Tlo can have multiple devices which are under its purview, but they must all be on the same version of the app, i.e. upgrading one android tablet to version 1.1.2 of the app will force all other devices to refuse to work until they too are using exactly version 1.1.2 of the app.

# Regions of code

- A database migration to hold our tables
- The TLO
- Fancy fire-on-enable hooks
- An admin-only UI, where you can turn on a feature_type for any percentage, number, or list of TLOs

# Rationale

This rationale does not apply to all situations.

The situation that I specifically believe that it applies to, is where you have a large number of distinct customers (merchants, venues, clients, etc) which are each a tiny yet larger-than-individual-transaction percentage of your traffic flow. It is persistent object- usually the "main" object in your data model.

If your server and its features are consumed by an android or ios app, which cannot be released or hotfixed instantly, especially if your product organization or technical strategy disallows you from forcing your users to upgrade (i.e. the normal operation of their business absolutely depends on your app, and they are understandably wary of upgrading)

# [THE EXAMPLE CODE IN ITS TERRIBLE GLORY](https://gist.github.com/compwron/b8bf570f7b5c5b5f4156)

Warning: This code has been reacted. Pieces are missing. It is all in one file because that is where I copy-pasted it.

[gist](https://gist.github.com/compwron/b8bf570f7b5c5b5f4156)

# The Future

It is possible that someday I will publish a gem that is related to this code.

# References

- [Facebook](http://blog.acolyer.org/2015/10/16/holistic-configuration-management-at-facebook/)
- [A Tale of Two Feature Flags](http://confreaks.tv/videos/rubyconf2015-a-tale-of-two-feature-flags) Rebecca Sliter, RubyConf 2015
- I wrote some of, but certainly not a majority of, the code that is in the git history of the code that this code was copied from before I modified it. Many fine developers made terrible faces to create for us this code.
