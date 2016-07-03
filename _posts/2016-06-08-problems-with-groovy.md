---
layout: post
title: "Problems With Groovy"
tags:
 -
---


- Mockito 1.x support (doesn’t work). Mockito 2 works but is beta
- ControllerLinkBuilder doesn't work with Groovy
- Problems when using Elide (Elide is a Java library that lets you stand up a JSON API)
- Spock mocks cannot be created out of a test context (this interferes with injecting mocked beans into spring contexts) // code sample goes here, - mockito vs spock
- Native groovy mocks can't be passed into constructors (casting issues)
