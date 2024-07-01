---
layout: post
title: "North Bay Python 2024"
tags:
 - conference
---

https://2024.northbaypython.org/
https://pretalx.northbaypython.org/nbpy-2024/schedule/


Venue is a barn in Petaluma. There are cats :) 

First talk, Glyph, Perfect Python Project. https://pretalx.northbaypython.org/nbpy-2024/talk/RYQVSH/
Referenes a book https://www.goodreads.com/book/show/41644.Be_a_Perfect_Person_in_Just_Three_Days_
"tox has arcane syntax for historical reasons"
github actions, yaml
"list your sypported python versions again in a different format"
"specify a matrix in mutually incmopatible ways"
"need code coverage to see if PRs actually have coverage" yeah ok fair hmm TODO
`pip install coverage_enable_subprocess` https://pypi.org/project/coverage_enable_subprocess/
"How to ditch codecov for python projects" blog by Hynek https://hynek.me/articles/ditch-codecov-python/
"You don't actually want to discover bugs in the middle of an unrelated PR" re Hypothesis https://hypothesis.readthedocs.io/en/latest/
"You dont want to fuzz the libraries youre using for process input"
Mypy type checking? But VSCode using PyRight. But PyCharm? Install the entire editor into your CI env, then... 
Security scanners, tool bandit. Maybe also/or Pyre Prsa, taint.config https://bandit.readthedocs.io/en/latest/ 
Dependency pinning. `pip-tools`, `pip-compile` or `pipgrip` more sophisticated algo. Or `poetry` which is also a build system. Or use (pdm?)
Dependabot in github actions understands your lockfiles, makes PRs... (pic of long list of dependabot PRs) 
use `black` instead of configuring "they would prefer it work that way"
use `autoflake` which has autofix
`ruff` to replace `black` and `flake` which reimplements them in rust, "prevents indicative mood in docstriung by default" lolll
`.pre-commit-config.yaml` wait really? https://github.com/pre-commit/pre-commit/blob/main/.pre-commit-config.yaml huhh
`.pre-commit.ci` hosted service, ? hooks not on computer, ? 
https://codspeed.io/ set it up for twisted, cool flamegraphs
Sphinx generates documentation. pydoctor gen docs. https://github.com/twisted/pydoctor `.readthedocs.yaml` pin dependencies
pypi-publish github action
"the perfect project hs too much stuff in it"
"you also need governance structures!"
(gilbert and sullivan interlude)
dev frictionof config setup might gin you to a hac
"every benefit has a cost" 
heuristics: basic metadata, tests on every CI, 
"code of conduct, opt into python process, your project could be taken away from you if you violate te code of conduct" fewer than 25 regular contributors, eh
"take it seriously and give yourself credit" 
"youre going to have to spend time fighting every one of these tools" 
"value your time and dont fear lower standards" "if a lint rule is wasting a lot of your time, turn it off"
"tools should work for you-" as in let the linter push to the PR, huh. 
get continuity by joining `jazzband`!  https://www.patreon.com/creatorglyph


Pamela Fox - vectors! https://pretalx.northbaypython.org/nbpy-2024/talk/DLYZFF/
2024-06-29, 10:55–11:20 (US/Pacific), Barn
no slides, only jupyter notebooks!
"Vector embeddings are a way to encode a text or image as an array of floating point numbers, and they make it possible to perform similarity search on many kinds of content. Let's try to wrap our head around vector embeddings and similarity spaces by exploring them visually! We'll compare different embedding models, different quantization schemes, and different input modalities, using open source tools that produce graphs and charts. Come on a vector voyage!"
retrieval augmented generatior
...
"what is the time like?" "eh, keep going" (organizer)
https://github.com/pamelafox

https://desfontain.es/blog/five-stages.html
https://alsmola.medium.com/risks-are-not-risks-vulnerabilities-are-not-vulnerabilities-9af05fd103e4
https://en.wikipedia.org/wiki/Planes_(film)


Bloomberg sponsor
https://x.com/TechAtBloomberg/status/1807096694162468947
Greg K-
member of Python infra team
Member of python guild
First time attendee
support regional conferences
this is impressively cringe lol
sponsor PSF nomfocus, memray, pytsatck, Blazingm2
he's trying and it's sweet
cringe halp
"proud - spython security council member working at bloomberg" 
4k pf 9k eng use pyton daily, including data analysists
"drop by our... booth? (guy looks around at the boothless barn)" xD xD

last talk before lunch
https://pretalx.northbaypython.org/nbpy-2024/talk/DQMNE3/
Lukas Fittl
Founder and CEO of pganalyze, a product for monitoring and optimizing Postgres performance.

Host of the weekly series "5mins of Postgres", that explains what's new with Postgres development, or introduces various Postgres concepts in detail.

Author of pg_query, a C library (with Ruby, Rust, Go, Python & other bindings) to parse queries just like Postgres does.

I love working with PostgreSQL statistics, visualizing them, and using techniques like constraint programming to automatically optimize a Postgres database for a specific workload.

optimize postgres queries
ok this giy knows so much more than he's saying
"you can read the source code" (of postgres) "just look at the actual source"
`create statistics` command
imo should be talking about query testing libraries for pytest like ruby has, ? 
"high relation between zip code and state" 
"I apologize for quoting him four times" (Tom Lane)
uses https://www.postgresql.org/docs/current/geqo-pg-intro.html if more than 12 tables. not very good
3 essential methods to get good vs bad query plans: ...
join order can change for the same query, depending on selectivity


lunch

https://en.wikipedia.org/wiki/Roboexotica
zap robot shocks you, if you hold on it dispense a drink
https://en.wikipedia.org/wiki/Colophon_(publishing)
"you left nasa and helped *ohter* people become functioning alcoholics"


Hypothesis! By Zac
https://pretalx.northbaypython.org/nbpy-2024/talk/WNJTKZ/
live demo!
hypothesis is very cool
"a sin which hypothesis is guilty of, but not in this particular case" 
"use each tool to get past the barriers tgat te otghers have trouble with" 
"this is just a json file fll of stuff"


blogs from yesteryear 
https://nkantar.com/blog/2023/08/nbpy-2023-afterfeels/



talk: Mario Munoz: Bridges - community connection
https://pretalx.northbaypython.org/nbpy-2024/talk/X7ZZPP/
from Honduras
"cholutexas" choluteca, southernmost state of honduras. very hot
https://en.wikipedia.org/wiki/Choluteca,_Choluteca
https://pythonbynight.com/
bridge building analogy


https://ericvilas.tumblr.com/post/751878689048887296?is_related_post=1#notes

https://ericvilas.tumblr.com/post/751878689048887296?is_related_post=1
"livestock guardian dogs will look at a human and go 'yeah that's close enough to a goat, you're my problem now'"

























