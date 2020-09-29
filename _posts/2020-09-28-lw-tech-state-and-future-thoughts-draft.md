---
layout: post
title: "LW tech state and future thoughts: draft"
tags:
 - draft
---

Notes/draft for a possible blog post about https://github.com/LessWrong2/Lesswrong2 which will be edited and posted by someone not-me, based on notes I took.


The codebase has two big tech debts for historical reasons: https://www.mongodb.com/  and https://www.meteor.com/ 

Typescript is good and helps a lot to make a sturdy codebase. It has also been an essential part of moving away from meteor. 

http://vulcanjs.org/ is built on top of meteor, and in fact it helps LW move away from meteor, because it’s an abstraction layer over meteor. Meteor relies on sockets for communication, abstracted via a https://graphql.org/ layer.

The only thing now stopping a move away from meteor is the magical “fibers”, which is a meteor way to do async functions. Without typescript, they would be indistinguishable from normal functions. Meteor silently uses a different thread to run what look like normal async operations.  All of those have to be ported over to work in a non-meteor way. The LW team has already ported 85% over, the last ones are the most “sticky” (difficult) ones. Most of the work has been about getting a contributor to the place when they can *recognize* one of the magical fiber syncs. Typescript was essential in identifying them- annotations were added to them, and then a set of lint rules was made to prevent sync from async. All the risky parts of the LW codebase are typed. Ideally the rest of the codebase would be typed also(?)

Oliver’s ideal LW world would be pure react postgres graphql. 

Why is graphql so good? Because the average graphql endpoint gets used often. In a regular REST API https://restfulapi.net/ either there are lots of endpoints and most of them are not used much, or it’s a “clunky” API and many operations take multiple API calls to finish data exchange. In graphql, you send a request which contains a descriptor of the data you want to get back and call the endpoint of the same structure. For example, if you just want the titles of all posts, in a RESTful API you would either:
1. Create a new /postTitles endpoint
2 Write the backend of the existing /posts endpoint to be able to take a parameter for what fields to return
3. Always send the full data of a post and let the frontend sort it out (not ideal because you always want to minimize the amount of data crossing the wire)
All three options feel a bit crappy, even moreso in data heavy apps. So when using graphql, average operation never needs a new backend endpoint to be created- just specify what subset of data you want when writing the client-side query. 

Thoughts on the past of the LW codebase:
Right now the LW codebase has much more and more complicated frontend code than backend code. Ideally someday, LW wants to pare down the heavy frontend app. In the very beginning of the codebase, Oliver says that he made some horrible performance mistakes, and wishes that he hadn’t written such a frontend-heavy app before having more experience. Having lots of dependencies brought in on the frontend bloats the app and makes it slow across the wire- bad user experience. Doing the same on the server would have had much milder consequences. Nowadays, LW has a mature metrics and error handling system, using their own metrics, https://sentry.io/ and other sophisticated performance monitoring. But way back when, there was none of that. 

The meteor bundler (think https://webpack.js.org/ equivalent ish) is inefficient. It tries to do async and sync code in too complicated of a way. It tries to resolve circular dependencies in a weird way. It is ok to import two files from each other (circular dependency). It imports a file up to the dependency on the other file, then loads the other dependency from the other file until the needed dependency is provided. So meteor needs fancy file interfaces to handle it, but file interfaces are expensive and frequent. The problem isn’t that there are circular dependencies, but that the way meteor treats individual files as modules is less efficient than other solutions, and you can’t turn it off and do it the usual way, because the meteor app has dependencies on meteor. LW experimented with ripping out meteor and moving to webpack, but it looks like getting rid of that part of the build will have to wait until the rest of the meteor dependency is removed.

Oliver learned a lot about the cost of a framework vs a library over the course of this project. A framework is difficult to escape, while a library is just a thing that an app uses. For example, React is a framework in that you can’t replace it without a huge amount of rewriting. But you can substitute https://preactjs.com/ or https://infernojs.org/ while still writing in react style. It’s an all-in foundational abstraction that the framework gives to you. Some frameworks are not libraries. Basically no one writes React in “vanilla” javascript i.e. without .jsx files. Basically, the ergonomics of React are equal to the ergonomics of JSX https://facebook.github.io/jsx/  

The key thing making the LW codebase complicated for new contributors is unclear. The frontend code is plain React with some some https://www.apollographql.com/ which is a mature library. LW has filed many bugs with them and it isn’t perfect, but Apollo is pretty good at responding to bugs. One frustrating pattern thought is that Apollo is reckless with major version releases and backwards compatibility. For example, a bugfix might be in the next major version release, but LW can’t upgrade to that release because it would break other things. The javascript ecosystem in general just doesn’t do long-term support mostly, so this is unpleasant but not unexpected. 

One “magical” architecture choice in the LW frontend is:
One of the nice things about the LW code is shared selectors, i.e. the database schema is almost perfectly mirrored to the client schema. So there is a shared set of selectors stored on client and server, because the client knows what fields you wanted. This can be confusing if you’re not expecting it. For example, on the front page, you want to query for posts where the “front page” flag is true. So when you send to the server… it is all big lists sorted by time. You insert into the big list store a sql query of all database requests, and check whether the new doc (a mongodb data blob is a “doc”) fits the selection criteria of sql. If so, then insert it. In the place where you make the mutation, don’t update the cache. This is not a redux thing; redux is not capable of this. Overall this is a bad idea, and it would be better (read: more maintainable, simpler, less confusing for new contributors) to just do cache updates manually, which is a much more sensible choice. I.e. you would specify once on the server and once on the client and keep them in sync. This part of the system is a piece of magic which is easy to be confused by. 
On the backend (node app) there is not much complexity. 

