---
layout: post
title: "Javascript Opinions"
tags:
 -
---

These are some things that I currently believe about javascript. Since the ecosystem is changing rapidly, these things might be false soon- within the year, if not within the month. Never believe anything. If you can, evaluate the advice that you read on the basis of first principles- performance, security, developer experience (simplicity and automation), and *user experience*!

### Bower

Use Bower for dependencies that you have to require in your html, like jquery and bootstrap. This is because it has a "flat" dependency tree- only one copy of anything. Therefore there will be less stuff that needs to be sent over the wire to the client, thus improving performance. Use npm for dependencies that are used in development, like mocha (test framework), browserify/webpack (concatenating and minifying your files so that it will be maximally fast to send them to the client's browser), eslint (linting), etc.

### NPM

Use NPM for everything that you don't use Bower for.

### Gulp vs Grunt

Gulp is more like code. Grunt is more like stitching together commands- basically inline bash. Prefer code. Also, gulp has pipes and those are basically transforms and those are fun.

### Checking in dependencies

Do check in your dependencies, NOT directly, but where they are resolved to by bower and/or npm. (I.e. don't copy-paste jquery into your project; tell bower to go get it for you and commit it.) Check in bower_components and node_modules because:

1. When npm or bower are down, your build process (local dev or continuous integration) will not be delayed.
2. If npm or bower are hacked or have an invalid or malicious package inserted into them, you will not be affected (unless you downloaded the package and checked it in, in which case you will hopefully notice and/or fix it once the vulnerability is announced and fixed)
3. If for some reason (and this is unfortunate but common) your saved list of dependencies is inaccurate or resolves differently over time (i.e. different code is in the registry under the same version number- beta releases sometimes do this if you don't include the hash in the version number)
