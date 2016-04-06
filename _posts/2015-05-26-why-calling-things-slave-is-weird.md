---
layout: post
title: "Why calling things slave is weird"
tags:
 - Jenkins
 - slave
 - tech
---

I've been trying to write this post for a while, and I will probably be trying to write it for a while yet, even after it's published. But, as has been pointed out to me recently, first drafts and feedback are important.

## Background

In the world of software development / computer science, there is a technical term that is spelled "slave". This bothers some people. (I am one of them.) Some other people think that this state of affairs is fine, or not worth changing.

## Definitions

What does "slave" mean as a technical term? "Master/slave is a model of communication where one device or process has unidirectional control over one or more other devices. In some systems a master is selected from a group of eligible devices, with the other devices acting in the role of slaves" [Wikipedia](https://en.wikipedia.org/wiki/Master/slave_(technology))

What does "slave" mean outside of technical fields? ["A person who is the property of another person and whose labor and also whose life often is subject to the owner's volition."](https://www.wordnik.com/words/slave) Slavery in this sense is bad. Let's all agree that this should not happen; that no human should be a slave.


## Reasons for changing

Many people who want to keep the existing phrase are publically racist and I do not want to be tainted by agreement with this viewpoint that they hold. See: "It's nice to see that no one here has expressed some of the more distasteful responses we see in the Django thread. Yay Drupal community!" [sreynen](https://www.drupal.org/node/2275877#comment-8843617)

It is possible that this term is offensive and/or offputting to some people. It seems likely that people descended from people who were slaves would be more likely to be offput by this term. It is currently public knowledge that some tech companies are trying to hire more individuals from [HDA (Historically Discriminated Against)](http://martinfowler.com/bliki/HistoricallyDiscriminatedAgainst.html) groups. Removing a source of [microagressions](https://en.wikipedia.org/wiki/Microaggression_theory#Race_or_ethnicity) seem likely to be helpful.

## Objections

A possible objection is: "It takes work, and the benefit would be incommensurate with the work involved." To that I say- the work is worth it. This is a matter of opinion and we can discuss it based on survey data about the connotations of the word to various people and groups. I do not currently have access to data like this; please feel free to send me links to data.

### Alternatives

* master/minion [SaltStack](http://qr.ae/RHfs39)
* primary/replica
  * [Drupal](http://qr.ae/RHf28X)
  * [IBM](http://pic.dhe.ibm.com/infocenter/cqhelp/v8r0m0/index.jsp?topic=%2Fcom.ibm.rational.clearquest.ms_admin.doc%2Ftopics%2Fc_cr_db_replica_ovw.htm)
  * [Microsoft](http://technet.microsoft.com/en-us/library/hh846234.aspx)
  * [EngineYard](https://support.cloud.engineyard.com/hc/en-us/articles/205408108-Set-Up-Database-Replication)
  * [AWS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_ReadRepl.html)
  * [ACM article from CloudDB '10 conference](http://dl.acm.org/citation.cfm?id=1871937)
* leader/follower [Django](https://github.com/django/django/pull/2692) [Django docs](https://docs.djangoproject.com/en/dev/topics/db/multi-db/)
* leader/replica
  * [kickstarter](https://github.com/kickstarter/replica_pools)

## Better terms:

* Replication: origin vs. replica
* Task delegation: chief vs. worker
* Consensus: arbiter vs. follower
* thanks to [@rhymoid](https://twitter.com/rhymoid)

* node (currently in use for this concept, if not maximally precise)
* dumry (generated nonsense word with no current meanings)
* arnd (generated nonsense word with no current meanings)
* ibuk (generated nonsense word with no current meanings)

### Opinions

"But I don't like the terms "Master" and "Slave", because these are reminders to a bad time in our pasts. It may sound silly but I think it's not correct to keep these, at least from a moral perspective. I know it's just a part of modern computer science,... but...." - [openfrog, StackOverflow](https://stackoverflow.com/questions/2013785/alternative-to-master-and-slave-in-entity-relationship)

"no need to employ a morally reprehensible term for a hierachical computer/technological controls arrangement... for example, we would designate connectors as "male" and "female", not "male" and "whore".... both cases "make the point" in a somewhat descriptive sense, however it is best to make the point using non morally reprehensible or inflammatory terms" - [Auden, StackOverflow](http://stackoverflow.com/a/7100211)

"For many, "master/slave" has an overriding context that cannot be unselected. And it's not even a proper metaphor for the thing we're describing. I don't ever want to have to say to anyone that it was more important, to our community, to continue using those imprecise terms, than it was to make you feel welcome." [Les Lim](https://www.drupal.org/node/2275877#comment-8831871)

"A colleague and I were discussing how to migrate our primary database server from one datacenter to another, when a group of college students (business and marketing) arrived for a tour. We were deep in the discussion, trying to ignore the interruption, when the teacher interrupted because she couldn't believe we were casually throwing around the terms 'master' and 'slave'. We explained that it was the technical terminology for database replication, created a long time ago, etc. etc., but wow that sounds lame and racist coming from two white males." - [John Whitlock, Quora](https://www.quora.com/Are-there-widely-accepted-alternatives-to-master-slave-terminology-for-database-replication)

"Ordinarily in Jepsen we’d refer to these as “primary” and “secondary” or “leader” and “follower” to avoid connotations of, well, slavery" - [aphyr](https://aphyr.com/posts/326-call-me-maybe-chronos)

["In 2003, the County of Los Angeles in California asked that manufacturers, suppliers and contractors to stop using "master" and "slave" terminology on its products"](http://www.cnn.com/2003/TECH/ptech/11/26/master.term.reut/)

"We've been using Gru and Minion. Probably gonna get sued." - [@mcculloughs](https://twitter.com/mcculloughs)


## References & Resources

- [Twitter thread about "slave"](https://twitter.com/compiledwrong/status/691081906675290112)
- [StackExchange question](https://programmers.stackexchange.com/questions/108035/master-slave-politically-correct-version)
- [Quora](https://www.quora.com/Are-there-widely-accepted-alternatives-to-master-slave-terminology-for-database-replication)
- [Mesos mailing list (argument against)](https://mail-archives.apache.org/mod_mbox/mesos-user/201506.mbox/%3CCA+-zrRJdXaCoBOnC21fqmHY5ysgEWHiHopkmZeUmnVhVm6oXdQ@mail.gmail.com%3E) [Mesos Jira (several cards; work done)](https://issues.apache.org/jira/browse/MESOS-1478)
- [Jenkins still uses "slave" copiously](https://wiki.jenkins-ci.org/display/JENKINS/Distributed+builds)

------


Typofixes, questions, factual corrections, and feedback are welcome: please file an issue on github at [https://github.com/compwron/compwron.github.io/issues](https://github.com/compwron/compwron.github.io/issues) or message me on twitter as [@compiledwrong](https://twitter.com/compiledwrong)
