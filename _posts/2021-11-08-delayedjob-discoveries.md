---
layout: post
title: "DelayedJob Discoveries"
tags:
 -
---

[Delayed::Job](https://github.com/collectiveidea/delayed_job) is a currently unmaintained library (last updated Dec 2020)

Ditto for `Delayed::RecurringJob` [https://github.com/amitree/delayed_job_recurring](https://github.com/amitree/delayed_job_recurring) (last updated June 2020)
 
`Delayed::Job` gets stuck sometimes. 

We started noticing problems related to DelayedJob around the time we were making some major infrastructure changes, so we spent a lot of time chasing in the wrong direction, ending with the glorious sentence
"It doesn't seem to be ECS vs EKS worker contention or EKS workers misbehaving" 

The fix to our problems as far as we can tell was to remove a slow regex from some logging which happens inside a particular DelayedJob, which was not timing out but was getting "stuck" i.e. not failed but not running, for hours and days. We suspect resource contention issues somehow.

We expect `Delayed::Job` and `Delayed::Recurring` to break on rails 7 which is [currently in alpha](https://weblog.rubyonrails.org/2021/9/17/this-week-in-rails-rails-7-alpha-released/). given that we generally upgrade as soon as a stable version comes out, this is something we need to plan for. 

We have 40+ DelayedJob jobs 


Some links that I suspect I will be reading closely sometime this year

1. [https://stackshare.io/delayed_job/alternatives](https://stackshare.io/delayed_job/alternatives)
1. [https://ruby.libhunt.com/delayed_job-alternatives](https://ruby.libhunt.com/delayed_job-alternatives)
1. [https://stackoverflow.com/questions/32035808/memory-leak-on-delay-job-whats-the-better-alternative-on-rails](https://stackoverflow.com/questions/32035808/memory-leak-on-delay-job-whats-the-better-alternative-on-rails)
1. [https://goiabada.blog/upgrading-from-delayedjob-to-sidekiq-in-a-mature-rails-webapp-966fb0d11ace](https://goiabada.blog/upgrading-from-delayedjob-to-sidekiq-in-a-mature-rails-webapp-966fb0d11ace)
