---
layout: post
title: "My first warbles into ember"
tags:
 -
---

I have a todo item on my huge personal trello that says "publish a blog post about my ember.js wanderings so far even though they're embarrassing, do it even if the formatting isn't perfect, do it NOW and fix it later" so... here goes.

My thought process:

What is ember? A js framework, "kinda like react but with a longer learning curve". I have reasons to want to be baseline fluent with this ecosystem. Let's go wandering!

Ok, where do I start? Well, find the source code of ember on github. Ok, the readme links to the docs- open the docs. Also clone the ember source because I enjoy reading it, even if that's not the fastest way to learn to use it. My opinion on reading source code of your frameworks is- do it if you have time. Even if the code you read doesn't make sense to you, now you know the shape of the thing that doesn't make sense. The human mind is a giant correlation engine, so give it data.

The docs mention a slack. Join the slack (mute everything) and look around. Invite yourself here: https://ember-community-slackin.herokuapp.com/

Next- while I'm here, look at all the channels in the slack, look up every word I'm not sure of.

(On a separate screen I have all of emberconf 2017 playing, basically instead of background music.)

Ok the next section will roughly correspond to slack channels in the ember slack (sorted by number of people in the channel)

https://open-tux.github.io/ember-bulma/ "Ember Bulma is a collection of Ember components and services for Bulma, a modern CSS framework"

http://www.ember-redux.com/ Redux is a data store. I've used it with react.

https://percy.io/ "Continuous visual reviews for web apps" It looks like the state of ui testing has advanced since my bootstrap days in 2014

https://miguelcobain.github.io/ember-paper/ Like material-ui but for ember? A thing that you use to make your site pretty, where you can pick and choose components. Based on google's https://material.io/guidelines/material-design/introduction.html

https://github.com/ember-cli/ember-twiddle like js-fiddle or python jupyter ish thing but for ember-cli

https://github.com/emberjs/ember-inspector browser plugin for debugging

https://ember-fastboot.com/ "FastBoot works by running your Ember application in Node.js. When a user visits your site, the initial HTML is rendered and served to the user. The very first thing they see is your content.

Only after the content has loaded do they start downloading JavaScript. Once finished, your app takes over. You get the same snappy performance you're used to from Ember apps.

And yes, this means the content in your Ember application is accessible to everyone, even if they have JavaScript turned off. It's even accessible to curl" ok now that is brilliant I think

https://glimmerjs.com/ kind of like material-ui I think, only less about the google published specification. Ui components are useful

https://github.com/ember-engines/ember-engines "Composable applications for ambitious user experiences." uh-huh, so... modules? Separately served modules? Sounds good for bigggg dev teams / apps. I'm going to not worry about this right now.

https://github.com/ember-animation/liquid-fire "Animations & transitions for ambitious Ember applications." snazzy UI stuff.

http://builtwithember.io/ showcase of ember sites

http://www.ember-cli-mirage.com/ ok sounds like a less exciting version of http://www.mbtest.org/ ? but of course I'm biased


https://github.com/ember-cli-deploy/ember-cli-deploy "A deployment pipeline for Ember CLI apps" like... jenkins, but specialized? there must be something I'm missing here. ...with plugins for s3... I think that I have different opinions on ci/cd than are baked into this, but I can't quite tell without digging in more. Anyway, keep going.

https://ember-concurrency.com/#/docs/introduction "ember-concurrency is an Ember Addon that makes it easy to write concise, robust, and beautiful asynchronous code.

It provides you with a powerful Task primitive, which offers the following benefits:

Tasks, unlike Promises, support cancelation.
Tasks expose their underlying state (whether they're running or idle" Just by the name I thought this was more generic but it's an actual library

https://github.com/simplabs/ember-simple-auth "A library for implementing authentication/authorization in Ember.js applications. it maintains a client side session and synchronizes its state across multiple tabs/windows of the application
it authenticates the session against the application's own server, external providers like Facebook etc."

My meta-learning so far is that in this ecosystem I should always look up the things that sound generic, because they're actually libraries/frameworks.

https://github.com/runspired/smoke-and-mirrors "Ambitious infinite-scroll and svelte rendering for ambitious applications."

https://github.com/emberjs/data "A data persistence library for Ember.js." Is this an alternative to redux? A quick search can't tell because "data" is too generic, even "ember-data" in quotes. I guess this is what apprenticeship and reading other people's code is for.

https://github.com/ebryn/ember-component-css "An Ember CLI addon which allows you to specify component-specific style sheets in an app, addon, engine, or in-repo addon." I don't yet understand why having a library for this would be useful, but the purpose seems clear at least.

http://embercordova.com/ "We have started moving the ember-cordova CLI into the corber project, which adds support for other Vue/React/Webpack" https://github.com/isleofcode/corber CLI for building hybrid apps with Ember/Vue/Glimmer/Cordova http://corber.io Cordova "Mobile apps with HTML, CSS & JS - Target multiple platforms with one code base" https://cordova.apache.org/

https://github.com/emberjs/ember-rails "ember-rails makes developing an Ember.JS application much easier in Rails 4.2+."

https://github.com/jamesarosen/ember-i18n internationalization framework

Meta-thought: the ember ecosystem seems much more cohesive than other parts of the js ecosystem I've been in lately. Or maybe there is a mastermind community manager somewhere who makes readme PRs and slack channels. Anyway, it works for me.

https://github.com/ember-a11y ember accessibility github org, with testing suite. https://github.com/ember-a11y/ember-a11y "A collection of tools to build accessible Ember applications." https://ember-a11y.github.io/ember-a11y/ "Since there is no way to automate screen readers for testing, this is an interactive script to help you run all of the tests inside of each screen reader." Huh, I never thought about automating screen readers. I do believe it should be possible, though. ... after some quick looking around, I stand corrected. See: https://sqa.stackexchange.com/questions/5579/what-are-the-options-for-automated-testing-of-screen-reader-in-web-apps https://marcysutton.github.io/a11y-automated-testing/#/ https://stackoverflow.com/questions/41356110/is-there-a-way-to-automate-open-source-screen-readers-nvda-for-accessibility You would probably have to target specific screen readers (there are many) and write something to "drive" the screen reader just like you would "drive" chrome or firefox or a desktop app etc. You could probably write a selenium driver for this but I'm pretty sure none exists. https://stackoverflow.com/questions/3709488/site-accessibility-what-screen-readers-etc-to-test-against-and-how

http://www.ember-bootstrap.com/ Why the hell would you want both of these at once. "An ember-cli addon for using Twitter Bootstrap in Ember.js applications. Provides a collection of native Ember components that mimic the original Bootstrap plugins and components in an ember friendly way, replacing the need for bootstrap.js." Oh ok it looks like just if you want the bootstrap UI aesthetic, not if you want all of bootstrap? Sure. The 2013 blogpost from the original author saying "don't use this" is one of the first search results for this. O.o

https://github.com/eviltrout/ember-performance meta-learning part 2: no but seriously, ever single generic technical word that I am used to using, is actually an ember library. I am bemused. "The Ember Performance Suite is designed to help profile and diagnose the performance of the Ember.js framework." But it's a year or more old, which probably means that there are much newer things :)

https://github.com/felixrieseberg/ember-electron "Build, test, compile and package desktop apps with Ember and Electron"

https://github.com/offirgolan/ember-cp-validations "Ember computed property based validations" and "No observers were used nor harmed while developing and testing this addon.
Lazily computed validations
Ruby on rails inspired validators
Support for Ember Data Models, Objects, Components, Services, etc.
Support for nested models and objects
Synchronous and asynchronous support
Easily integrated with Ember Data's DS.Errors
No observers. Seriously... there are none. Like absolutely zero....
Custom validators
I18n support
Debounceable validations
Warning validations
Dirty tracking"

https://github.com/emberjs/rfcs/blob/master/text/0143-module-unification.md "Create a unified pattern for organizing and naming modules in Ember projects that is deterministic, extensible, and ergonomic."

https://github.com/Semantic-Org/Semantic-UI-Ember "Official Semantic UI Integration for Ember" "Maintainers Wanted" https://semantic-ui.com/ "Semantic is a development framework that helps create beautiful, responsive layouts using human-friendly HTML." this reminds me of the xkcd https://xkcd.com/927/

http://www.ember-leaflet.com/ "Easy and declarative mapping for ember" like actual physical maps like google maps, not data object mapping. :)

https://github.com/html-next/flexi layout framework "Flexi is a responsive-design layout framework like Bootstrap and Foundation. Flexi is focused on performance and maintainability, utilizing Ember for greater configuration and convenience than Bootstrap or Foundation can offer. Flexi does most of it's heavy lifting at build time, happily adding very little runtime code and CSS to your project."

https://github.com/html-next/ember-gestures "Ember Gestures provides an easy way to use gestures by making it simple to define and use HammerJS managers and recognizers throughout your app."

Meta-thought: it looks like those painful transitive-dependency-failure-tracking skills that I developed might come in use.

I'm familiar-ish with broccoli, yarn, handlebars already so I won't go into those.

I'm skimming through the most recent ember stackoverflow questions https://stackoverflow.com/questions/tagged/ember.js Nothing too exciting in there so far- mostly people mis-using libraries, looking for configuration options (frequently without knowing that they are looking for configuration options), trying to discover features of their libraries or get recommendations for new libraries.

Here's a cool thing for experimenting with d3 (visualizations) in the browser (like js-fiddle or ember-twiddle) http://blockbuilder.org/

Someone on SO is very excited to hear about this library (for emulating or working with rails-ish softDelete) https://exelord.github.io/ember-custom-actions/

https://github.com/ef4/ember-browserify "ember-cli addon for easily loading CommonJS packages from npm via browserify." https://en.wikipedia.org/wiki/CommonJS "CommonJS is a project with the goal of specifying an ecosystem for JavaScript outside the browser (for example, on the server or for native desktop applications)." http://browserify.org/ "Browserify lets you require('modules') in the browser by bundling up all of your dependencies."

https://github.com/Addepar/ember-table "An addon to support large data set and a number of features around table."

to be continued, maybe.
TODO - make the links into actual links
