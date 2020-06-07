---
layout: post
title: "Slave in Software Considered Harmful (Redux)"
tags:
 -
---

## Background

In the world of software development / computer science, there is a technical term "slave" which should be abandoned. This post is intended to be a list of software tools which use "slave" or which have gone through a rename process away from using the word "slave".

This is a rewrite-and-extension of [Why calling things slave is weird](http://compwron.github.io/2015/05/26/why-calling-things-slave-is-weird.html)

More discussion/summary or this topic on [Wikipedia](https://en.wikipedia.org/wiki/Master/slave_(technology))

## Definitions

What does "slave" mean as a technical term? "Master/slave is a model of communication where one device or process has unidirectional control over one or more other devices. In some systems a master is selected from a group of eligible devices, with the other devices acting in the role of slaves" [Wikipedia](https://en.wikipedia.org/wiki/Master/slave_(technology))

What does "slave" mean outside of technical fields? ["a person held in servitude as the chattel of another"](https://www.merriam-webster.com/dictionary/slave)


### Transitions or attempted transitions away from "slave"

1. [Drupal (2014)](https://www.drupal.org/node/2275877)
1. [Django (2014)](https://github.com/django/django/pull/2692) 
1. [Kubernetes (2014)](https://github.com/kubernetes/kubernetes/issues/1111)
1. [couchDB (2014)](https://issues.apache.org/jira/browse/COUCHDB-2248)
1. [dotnetg/roslyn (2015)](https://github.com/dotnet/roslyn/pull/3507)
1. [Swift (2015)](https://github.com/apple/swift/pull/165)
1. [mediawiki (2015)](https://lists.wikimedia.org/pipermail/wikitech-l/2016-September/086450.html), [mediawiki RFC](https://www.mediawiki.org/wiki/Requests_for_comment/Master-slave_datacenter_strategy_for_MediaWiki), [mediawiki phabricator](https://phabricator.wikimedia.org/T88666) 
1. [mesosphere (2015)](https://docs.google.com/document/d/1P8_4wdk29I6NoVTjbFkRl05-tfxV9PY4WLoRNvExupM/edit#heading=h.9g7fqjh6652v), [phase 1 docs](https://issues.apache.org/jira/browse/MESOS-3783)
1. [redis (2016)](https://github.com/antirez/redis/issues/3185)
1. [kickstarter/rack-attack (2016)](https://github.com/kickstarter/rack-attack/pull/181)
1. [apple/swift (2017)](https://github.com/apple/swift/pull/11687)
1. [Kubernetes website (2017)](https://github.com/kubernetes/website/issues/6525)
1. [python (2018)](https://bugs.python.org/issue34605)
1. [redis (2018)](https://github.com/antirez/redis/issues/5335)
1. [cpython (2018)](https://github.com/python/cpython/pull/9099), [more cpython](https://github.com/python/cpython/pull/9101)
1. [helm (2018)](https://github.com/helm/helm/pull/3458)
1. [jenkins (2018)](https://github.com/jenkinsci/jenkins/pull/3304)
1. [redisson (2018)](https://github.com/redisson/redisson/issues/1629)
1. [gitlab (2018)](https://gitlab.com/gitlab-org/gitlab-foss/-/issues/42751)
1. [debian/salsa (2018)](https://salsa.debian.org/salsa/support/-/issues/48)
1. [rails (2018)](https://github.com/rails/rails/issues/33677), [rails more](https://github.com/rails/rails/pull/33681)
1. [elixir (2020)](https://github.com/elixir-lang/elixir/pull/10078)
1. [apollographql (2020)](https://twitter.com/glasser/status/1269330040895836160)
1. [apache webserver docs (2020)](https://twitter.com/rbowen/status/1269346035652005890), [git commits](https://github.com/apache/httpd/commits?author=rbowen&since=2020-06-01&until=2020-06-07)

## Tools which haven't changed yet

1. [MySQL](https://github.com/search?q=org%3Amysql+slave&type=Code) (owned by [Oracle](https://www.oracle.com/))
1. [MariaDB](https://github.com/search?q=org%3AMariaDB+slave&type=Code)
1. [Jenkins](https://github.com/search?q=org%3Ajenkinsci+slave&type=Code)
1. [Apple](https://github.com/search?q=org%3Aapple+slave&type=Code)

It's worth noting here that [postgres](https://github.com/search?p=2&q=org%3Apostgres+slave&type=Code) does **not** use "slave" in the vast majory of places- there are a very few remnants left.

[MongoDB will switch in 4.6](https://twitter.com/MongoDB/status/1268269497447833605)

## Related discussions

1. [CNN - Los Angeles County (2003)](http://www.cnn.com/2003/TECH/ptech/11/26/master.term.reut/), [Snopes summary](https://www.snopes.com/fact-check/masterslave/)
1. [StackOverflow - openfrog (2010)](https://stackoverflow.com/questions/2013785/alternative-to-master-and-slave-in-entity-relationship)
1. [StackOverflow - Auden (2011)](http://stackoverflow.com/a/7100211)
1. [StackExchange question (2011)](https://programmers.stackexchange.com/questions/108035/master-slave-politically-correct-version)
1. [Drupal forums - sreynen (2014)](https://www.drupal.org/node/2275877#comment-8843617)
1. [Drupal forums - Les Lim (2014)](https://www.drupal.org/node/2275877#comment-8831871)
1. [aphyr (2015)](https://aphyr.com/posts/326-call-me-maybe-chronos)
1. [Quora - John Whitlock (2015)](https://www.quora.com/Are-there-widely-accepted-alternatives-to-master-slave-terminology-for-database-replication)
1. [twitter thread (2016)](https://twitter.com/compiledwrong/status/691081906675290112)
1. [twitter - ISC.org (2017)](https://twitter.com/ISCdotORG/status/942815837299253248)
1. [contributor covenant (2018)](https://github.com/ContributorCovenant/contributor_covenant/issues/569)
1. [Dreamhost company blog (2019)](https://www.dreamhost.com/blog/addressing-problematic-coding-terms-open-source-community/)
1. [tweet - bmiddaugh (2019)](https://twitter.com/bmiddaugh/status/1093229472483082240)
1. [Quora (2015)](https://www.quora.com/Are-there-widely-accepted-alternatives-to-master-slave-terminology-for-database-replication)
1. [Mesos (2015)](https://mail-archives.apache.org/mod_mbox/mesos-user/201506.mbox/%3CCA+-zrRJdXaCoBOnC21fqmHY5ysgEWHiHopkmZeUmnVhVm6oXdQ@mail.gmail.com%3E) [Mesos Jira (several cards; work done)](https://issues.apache.org/jira/browse/MESOS-1478)
1. [twitter - justkelly_ok (2017)](https://twitter.com/justkelly_ok/status/933011085594066944)
1. [standby (2017)](https://github.com/kenn/standby/issues/22)
1. [postgresql (2017)](https://www.postgresql.org/message-id/flat/20170801195924.GT1769%40tamriel.snowman.net#50333dae8b2f7a8414a0885119b058c8)
1. [IETF (2018)](https://tools.ietf.org/id/draft-knodel-terminology-00.html)
1. [Redis - antirez (2018)](http://antirez.com/news/122)
1. [twitter - nmgrm (2018)](https://twitter.com/nmgrm/status/1038790691529273345)
1. [twitter - andrestaltz (2018)](https://twitter.com/andrestaltz/status/1030200563802230786)
1. [twitter - chriseppstein (2018)](https://twitter.com/chriseppstein/status/991180452198141954)
1. [Jenkins (2018)](https://github.com/jenkinsci/configuration-as-code-plugin/issues/121)
1. [twitter - dhh (2018)](https://twitter.com/dhh/status/1032050325513940992)
1. [twitter - holtbt (2019)](https://twitter.com/holtbt/status/1035957101766443008)
1. [twitter - softqueerfeels (2019)](https://twitter.com/softqueerfeels/status/1204937312574066689)
1. [twitter - Geahk_Burchill (2019)](https://twitter.com/Geahk_Burchill/status/1192262719308566528)
1. [twitter - astrophisacist (2019)](https://twitter.com/astrophisacist/status/1178408022424449024)
1. [theserverside.com article (2019)](https://www.theserverside.com/opinion/Master-slave-terminology-alternatives-you-can-use-right-now)
1. [bitnami-docker-postgresql (2019)](https://github.com/bitnami/bitnami-docker-postgresql/issues/175)
1. [Microsoft- bias free communication (2020)](https://docs.microsoft.com/en-us/style-guide/bias-free-communication) 
1. [twitter - ggraborenko (2020)](https://twitter.com/ggraborenko/status/1265821103408078850)
1. [twitter - JoshData (2020)](https://twitter.com/JoshData/status/1265728459743117314)
1. [twitter - ZachMcCormick (2020)](https://twitter.com/ZachMcCormick/status/1265472679894753282)
1. [twitter - youfoundm0lly (2020)](https://twitter.com/youfoundm0lly/status/1260664632563335173)
1. [twitter - justbalbi (2020)](https://twitter.com/justbalbi/status/1255626170609160195)
1. [twitter - recfab (2020)](https://twitter.com/recfab/status/1253094191816519680)
1. [twitter - workie (2020)](https://twitter.com/workie/status/1250880886024761345)
1. [twitter - LaurenSato (2020)](https://twitter.com/LaurenSato/status/1231795445606649856)
1. [twitter - eric_d_hancock (2020)](https://twitter.com/eric_d_hancock/status/1226120388742127616)
1. [twitter - grumpybozo (2020)](https://twitter.com/grumpybozo/status/1220008116869312512)
1. [twitter - humblebitcoiner (2020)](https://twitter.com/humblebitcoiner/status/1205975617042173952)
1. [twitter - irishpadres (2020)](https://twitter.com/irishpadres/status/1267889257185636352)
1. [twitter - EnemyOfThePpl (2020)](https://twitter.com/EnemyOfThePpl/status/1266420047645310976)
1. [twitter - andrew_mason1 (2020)](https://twitter.com/andrew_mason1/status/1265412015125925890)
1. [twitter - dokasto (2020)](https://twitter.com/dokasto/status/1268121379469234177)
1. [twitter - leahculver (2020)](https://twitter.com/leahculver/status/1269109776983547904)
1. [twitter - schmichael (Hashicorp) (2020)](https://twitter.com/schmichael/status/1269340771066380289)
1. [twitter - girl_debord (2020)](https://twitter.com/girl_debord/status/1269401008964358144)
1. [twitter - ldn_photo (photography) (2020)](https://twitter.com/ldn_photo/status/1269400955197497351)
1. [twitter - arunsaitweets (2020)](https://twitter.com/arunsaitweets/status/1269385631932637184)
1. [twitter - sheetaverma (Nutanix) (2020)](https://twitter.com/sheetaverma/status/1269385759372398592)
1. [Theo Schlossnagle  (2020)](https://lethargy.org/~jesus/writes/a-guide-to-nomenclature-selection/)
1. [twitter - aaronbassett (mongodb) (2020)](https://twitter.com/aaronbassett/status/1269331705485234181), [mongodb official](https://twitter.com/MongoDB/status/1268269497447833605)
1. [twitter - DanaMC18 (2020)](https://twitter.com/DanaMC18/status/1269443031889051654)
1. [twitter - pogo63_22485 (photography) (2020)](https://twitter.com/pogo63_22485/status/1269429348420861953)
1. [twitter -  (2020)]()



## More information about microagressions

- [Microagressive phrases to not use at work](https://www.ibmadison.com/In-Business-Madison/December-2019/10-common-phrases-and-a-few-extras-that-no-one-should-say-at-work/)
- [Micro-movement and the memory of slavery](https://blogs.lse.ac.uk/humanrights/2015/08/24/micro-movement-and-the-memory-of-slavery/)
- [Microaggressions in the Context of Academic Communities (PDF)](https://digitalcommons.law.seattleu.edu/cgi/viewcontent.cgi?article=1692&context=sjsj)
- [How to not be racist: Chapter 2](https://www.michigandaily.com/section/mic/how-not-be-racist-chapter-2)
- [Common Words and Phrases That Have Seriously Racist Roots](https://archive.attn.com/stories/6951/common-words-and-phrases-that-are-racist)

