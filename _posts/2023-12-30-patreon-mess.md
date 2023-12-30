---
layout: post
title: "patreon mess"
tags:
 -
---

goals
- get a list of creators I support
- get a list of membership amounts for creators I support
- get a list of recent output of creators I support
- mass unsubscribe from creators given a hand created sub list of the above (this is sad but, kinda needed)


get list is easy - log in, then get from sidebar
`document.querySelectorAll('a').forEach(a => console.log(a.href));`
do some hand wrangling on the data to get a list of urls of format `https://www.patreon.com/settings/memberships/viennateng`

okay... now what 