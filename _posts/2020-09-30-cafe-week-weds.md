---
layout: post
title: "Cafe Week: Weds"
tags:
 -
---


#### CASA

Weekly stakeholder sync - 30 min, reviewed recent work and talked about whether we can get some more active CASA help with QA

Office hours - 2hr: working through a new contributor's setup issues, first with docker on windows and then with non-docker plain rails setup on windows. Some interesting highlights were line endings on windows interfering with docker being able to launch containers, and webpacker not packing on windows (without docker running) despite reporting success. 

#### Ray Summit

I watched five or six talks from [Ray Summit](https://raysummit2020.com/home-full/) - it looks like the schedule isn't visible w/o registration, weird.

1. Keynote: Welcome & The Future of Ray - Robert Nishihara, CEO & Co-founder, Anyscale
1. Keynote: Programming the Cloud as Easily as your Laptop - Ion Stoica, Executive Chairman, Anyscale | Professor, University of California Berkeley
1. Keynote: Anyscale Product Demo - Edward Oakes, Software Engineer, Anyscale
1. Keynote: Building a Fusion Engine with Ray - Dr. Charles He, Chief Architect of Storage and Compute, Ant Group
1. Keynote: Scalable Python We Can Afford - Wes McKinney, Director of Ursa Labs, Creator of Python Pandas Project
1. Keynote: Easier Machine Learning Thoughts From Scikit-Learn - Gaël Varoquaux, Research Director, Inria
1. Stretching Break: Shoulders & Neck - Maryam Sharifzadeh, Office Yoga (this was really good!)
1. Keynote: ML for Systems and Chip Design - Azalia Mirhoseini, Senior Research Scientist, Google Brain
1. Keynote : Modern App Development - Adrian Cockcroft, VP Cloud Architecture Strategy, AWS
1. Keynote: Artificial Innovation Accelerates Artificial Intelligence - David Patterson, Professor Emeritus, Professor in the Graduate School, UC Berkeley
1. Keynote: AI for Financial Services - Manuela Veloso, Head of AI Research, J.P. Morgan
1. Keynote: Machine Learning & A.I. At Uber - Zoubin Ghahramani, Chief Scientist & VP, Artificial Intelligence, Uber Technologies
1. Natural Language Processing - Ray: A General Purpose Serverless Substrate? - Eric Liang, Anyscale

#### Everwise

On a recommendation from someone frustrated with Plato, I signed up with [Everwise](https://www.geteverwise.com/) (I am meh about the same but eh) to be a "mentor". I did an intro call with Everwise to verify me and talk about mentoring in general.
They have some solid content inside their portal which I've started exploring.

#### [Dream Corps](https://www.thedreamcorps.org/) SQL

I volunteered to help a friend's nonprofit and their employees learn some sql, signed some forms, and now that I have full db access, I spent ~2 hr pairing on some DC sql queries. I've been having fun teaching sql and poking around in the data for the insights that they want. It's simple stuff and I find it restful and fun to explore a new schema with only a few hundred tables, all pretty well named!

This is open, click, and "action" (which I'm not actually sure... what that means, but there's a table for it) rate for emails sent to subscribed members i.e. users.
This could be written in several ways but this way is performant enough for the current dataset. This data came from [ActionKit](https://www.actionkit.com/)  

```mysql
select email,
       user_id,
       mailer_count,
       open_count,
       open_count / mailer_count   as avg_opens_per_mailer,
       click_count,
       click_count / mailer_count  as avg_clicks_per_mailer,
       action_count,
       action_count / mailer_count as avg_actions_per_mailer
from (
         select email,
                user_id,
                (select count(*)
                 from core_usermailing
                 where core_usermailing.user_id = user_mailers.user_id
                ) as mailer_count,
                (
                    select count(*)
                    from core_open
                    where core_open.user_id = user_mailers.user_id
                ) as open_count,
                (
                    select count(*)
                    from core_click
                    where core_click.user_id = user_mailers.user_id
                ) as click_count,
                (
                    select count(*)
                    from core_action
                    where core_action.user_id = user_mailers.user_id
                ) as action_count
         from (
                  select core_user.email as email,
                         core_user.id    as user_id,
                         count(*)        as mailer_count
                  from core_usermailing
                           join core_user on core_usermailing.user_id = core_user.id
                  group by core_user.email
              ) as user_mailers
     ) as open_click_action
```  

List size by tag
```mysql
select core_tag.name, count(distinct core_user.id) as user_count
from core_user
         join core_subscription on core_subscription.user_id = core_user.id
         join core_action on core_action.user_id = core_user.id
         join core_page_tags on core_page_tags.page_id = core_action.page_id
         join core_tag on core_page_tags.tag_id = core_tag.id
where core_subscription.list_id = 11
group by core_tag.name
order by user_count desc
```



#### Chrome trick

If there's one site that you have visited a lot and want to wipe **all** visits from chrome history without having to click each visit one at a time, go to `chrome://history/`, search for your site, and then Cmd-A will select all the checkboxes so you can delete them all at once. Very cool! 