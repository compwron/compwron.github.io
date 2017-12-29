---
layout: post
title: "Thoughts on React/Redux after a year"
tags:
 -
---

What are my credentials to have any kind of opinion on react/redux? Limited, but existant. My first commit in a react/redux codebase was on 2017-05-16 and according to git I have 511 commits in that codebase (it's one of ~3 main codebases that I've been working on with my team for the last 1.5 years for 1,769 commits total, for whatever that contextless number is worth). I've given two work-internal presentations of our codebase which I'm told were interesting and useful to other people working in codebases with similar tech stacks. I've given five or ten short code tours of this codebase to various interested coworkers.

The vast majority of what I know about react/redux and to some extent about good js in general came from two of my awesome coworkers, [James](https://github.com/oloo) and [Michael](https://www.linkedin.com/in/mslennon/).

Most of the weird bugs that we had were in our reducers (or in logic that should have been in a reducer). You can tell when you have a bug caused by a reducer, because the "fix" (for the user) is to refresh the page. Alternately, the bug only happens after refreshing the page- which means that you likely have an issue in your initializer or that there is something that should be called in [componentWillMount](https://reactjs.org/docs/react-component.html#componentwillmount) (or similar) but which is not.

In general, when I'm showing someone our codebase for the first time, I like to, in order:

* go through the readme
* package.json and especially the scripts section
* app.js or equivalent, to see setup and global rendering stuff like material-ui needs etc
* routes.js or equivalent (basically wherever the url to Page mappings happen) which will have been called from the app.js
* follow the code from one of the routes, Page-Container-Form (or a more complicated path with nested containers)
* Page (which is basically just a name for the first thing to extend Component, and which usually brings together things like headers, sections, and calls one or more Containers)
* Container (one or more of these is called from the Page) which has the react-redux "[connect](https://www.sohamkamani.com/blog/2017/03/31/react-redux-connect-explained/)" call
* follow the code to one or more Services (which handle ajax to the API) which contain [dispatch](https://redux.js.org/docs/api/Store.html#dispatch) calls
* follow the dispatch calls to the reducers, and make sure to take a look at the all_reducers.js file (or whatever it's named in your codebase- it's where [combineReducers](https://redux.js.org/docs/api/combineReducers.html) is called)
* go back up the Container and follow it to the Form (a name that this codebase uses for the very bottom layer, the most reusable file, i.e. the thing that is called in "render() {" but which itself does not call any other forms or containers in its own render method)
* ok, you've had the tour! Also make sure to look at the tests which can raise some interesting questions like "why do you do it this way??" "well... our authentication provider, [Centrify](https://www.centrify.com/), has some integration quirks..."

I'm aware that there are other ways to use these tools, but this is the rough shape of what that particular codebase is like, and I feel like it is pretty standard.

For reference, this codebase is I would say on the small side of medium. According to [cloc](https://github.com/AlDanial/cloc), there are 482 files in /src (including tests) and 28041 lines of js code (including tests, not including css files)

I love the component reuse that my team has been able to get from react, and the separation of concerns.

Notable tools that this codebase uses in addition to react and redux

* material-ui (pretty UI components, also makes testing setup slightly more complicated, and occasionally we put in hours of frustrated hacking to work around its quirks, especially around redux-form interactions)
* redux-form (this is great for cutting down on form boilerplate, but it is opinionated and we've had a few long hours trying to figure out how to work around it in particular ways)
* mountebank (for over-the-wire local running/testing which has been hugely useful for us) Note- I volunteered to help maintain mountebank and if I ever actually learn what I'm doing, I might get commit access. So that's pretty cool :)
* flow (typing for js; our conversion to flow has been slow, painful, and I am unconvinced that the hours spent even so far are worth it, but our resident experts are still game and determined, so I've been going with it) I am however pretty proud of this [auto-ratcheting build script](https://gist.github.com/compwron/704ab5b3154deece4d67e467c0f44a93) that has been helping us continue our conversion. Note: if you don't know about [ratcheting](http://robertgreiner.com/2012/01/continuous-code-improvement-using-ratcheting/), it's really useful especially for dealing with legacy codebases, mixed teams, or long-running conversion efforts.
* react-dnd (drag and drop) this has worked well for us, although we have a few files full of copy-pasted setup for it, so it could be a little bit nicer in that way
* nock (for testing- I love this thing, it means you can test absolutely everything above the API call layer without needing dependency injection)

In general, as a user, Centrify seems fine, not intolerable. The Java integration was a pain though, in large part because of deeply insufficient docs. Also, permissions administration has been a centralized bottleneck for us that occasionally locks everyone or a few people out of splunk, or the CI server, or the QA environment, or similar (when misconfigured).
