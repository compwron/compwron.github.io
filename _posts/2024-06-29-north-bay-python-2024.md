---
layout: post
title: "North Bay Python 2024"
tags:
 - conference
---

https://2024.northbaypython.org/


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


