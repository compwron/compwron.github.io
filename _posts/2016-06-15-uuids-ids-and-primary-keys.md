---
layout: post
title: "UUIDs, incrementing IDs, and primary keys (in APIs)"
tags:
 -
---

This came out of some thoughts at work.

TL;DR defense in depth is good, it's possible but not unavoidable to have large-scale performance problems if you use uuid as your primary key, UUIDs can in some situations be a solution for having to generate IDs in multiple locations, including the client and sharded databases, and I don't think it's worth it to use UUIDs instead of incrementing integers in API URLs (unless you're a financial company I guess) because the only real win is that it's harder for someone who's gotten past your auth system to increment over your objects by ID, and that's not worth the extra code complexity for many non-financial teams.

## What is a UUID?

It is an identifier which is intended to be unique and uniquely identify some piece of data.

It looks like this: 0d8fbb59-b280-45d8-ad88-dbfe88bd0bf1 (this is a version 4 id; for more info about uuds, see [RFC-4122](https://www.ietf.org/rfc/rfc4122.txt))

You can get a random UUID here: [https://www.uuidgenerator.net/](https://www.uuidgenerator.net/)

In java, you can generate one via:  {% highlight java %} UUID.randomUUID()  {% endhighlight %}


## What is an (incrementing) ID?

In this context, an Id is a unique incrementing integer assigned to a row in a database. It is usually but not always also the primary key of that database table.

{% highlight sql %}
create table cats (
    id bigint primary key,
    uuid varchar(50),
    favorite_mouse varchar(2083)
);
{% endhighlight %}

[TODO] show howto autoincrement an ID in sql, mention that JPA does it.


# Similarities

UUIDs and IDs are both unique identifiers.

## Differences

UUIDs are hard to guess and hard to remember. They cannot be iterated over. Numberic IDs, even if they do not denote order of object creation (which by default they do) can be iterated over.


## Do you want UUID, ID, or both?

We at least want UUIDs. Probably we want both, because:

1. ID is great for app-internal use, to index on. Since they are incrementing integers, you even know which object was created first. (Unless you are sharding the database, in which case you can use composite IDs)
2. UUID is great for external use.

## Why do we not want to use an incrementing integer as an external identifer?

If I know that my record (revealed in the API URL as http://example.com/api/foo/123) then I know that, if my Cat object was just created, then there are only 122 other Cat objects in this application's database. Also, if I can find a way to have access to other people's Cat objects, it is trivial to increment

Using UUIDs help you practice [defense in depth](https://en.wikipedia.org/wiki/Defense_in_depth_(computing)) in two ways:

1. Don't reveal information that you do not want to reveal about your business and app (how many objects exist)
2. Risk mitigation of URL tampering, i.e. make it more difficult for attackers who have somehow managed to get access to objects (in this case Cats) which they should not have access to. Because UUIDs cannot be iterated over and are hard to guess, an attacker will not have an easy time discovering how many objects are available through your API, or guessing what identifier can access any objects.

Also, you remove temptation from your API consumers. Using an autoincrement integer implicitly encodes additional information in the key beyond identity, namely some sort of natural ordering by create time. ANy information that you reveal might be used by a consumer of the service. For example, to do sorting on records by create time (via tine incrementing ID)

When it comes to sharding databases, UUIDs are a cheap way to get away from id collisions between shards, rather than using a compound Incremental ids are usually only unique within one instance of database.


## Performance

If you're using a clustered index since the non-sequential nature of GUIDs/UUIDs adds a lot of overhead on inserts, but Postgres indices are unclustered by default so unless you are explicitly clustering on the PK that shouldn't much of a problem. Postgres also has a UUID datatype, which means you're (hopefully) not storing them as a VARCHAR(32).

When in doubt, performance test!


## Risks of using UUIDs

1. Adding complication to the codebase, for reasons which may not be obvious to later developers.
2. Increasing DB file size in databases which do not have a native UUID type, like SQL Server.


## References

- [Do you really need a UUID/GUID? - silvrback](https://rclayton.silvrback.com/do-you-really-need-a-uuid-guid)
- [When to use UUIDs in a design - stackoverflow answer](http://stackoverflow.com/a/786541/307743)
- [Why UUIDs - debuggable.com](http://debuggable.com/posts/why-uuids:48c906cc-7a6c-4f22-9e20-6ffd4834cda3)
- [Percona UUIDs 2007](https://www.percona.com/blog/2007/03/13/to-uuid-or-not-to-uuid/)
- [Percona UUIDs 2014 (Optimization)](https://www.percona.com/blog/2014/12/19/store-uuid-optimized-way/)
- [Wikipedia UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier)
- [Wikipedia GUID](https://en.wikipedia.org/wiki/Globally_unique_identifier)
- [Interagent API design](https://github.com/interagent/http-api-design/issues/79)
- [Sharding IDs at Instagram](http://instagram-engineering.tumblr.com/post/10853187575/sharding-ids-at-instagram)
- [Security issue w/ Twitter - mashable](http://mashable.com/2015/04/28/twitter-earnings-selerity/#n0HUbOeIWZqq)
- [UUIDs as Keys - joevandyk](http://blog.joevandyk.com/2013/08/14/uuids-as-keys/)
- [Coding Horror](https://blog.codinghorror.com/primary-keys-ids-versus-guids/)
- [Choices - databases.aspfaq (wayback machine)](https://web.archive.org/web/20150511162734/http://databases.aspfaq.com/database/what-should-i-choose-for-my-primary-key.html)
- [Natural/Surrogate keys - agiledata](http://www.agiledata.org/essays/keys.html)
