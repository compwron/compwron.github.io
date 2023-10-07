---
layout: post
title: "new-fieldmask-notes"
tags:
 -
---


ok so i have this code problem
and im working from memory here so its inexact
want to swap the masking library because the old one is (maybe) being Bad

write a test that can be run in IE in CI so I don't need to figure out why browserstack api is mad at my local test runner
datefield was simple but phonenumber field is not

phone react component layers on top of text1 layers on top of text2 which layers on mask(alias) which loads the import

obvious step forward is make newmask!phone which layers on newmask!text1 -> newmask!text2 which uses the import directly, no alias

complexity is - uh, what was it again
somefield that gets passed into the old alias seemsweirdman - it's either null, or 'numeric' 
and if numeric then maybe it should be a mask regex, even if there is not otherwise a mask regex? 
open question- is somefield ever set at the same time as the mask, when passed someways into text2? unknown, i checked the ~20 callsites but it was still unclear because those take all-params... 

yeah i think that's about where i stalled out

ok so, 
if i can get that dang test written, then I can prove that it's ok with IE, and then I can trust all the existing tests to keep it honest and I can stop worrying about rewriting them
(and if the existing tests say fuck you its wrong? then uh I will cross that bridge evaluate that data... when i have it...) 

ok so what should be in that new test? uhhhhhhhh
either find a real existing page about it, that doesn't suck to get to (nope, not available) 
or uh temporarily hack what i want into the like main loading page which the one existing IE test page actually uses? boy don't put that in prod
uh maybe put it under a feature flag? we have those

ok so
under a feature flag, on the main login page (seriously? seriously, i guess, at least someone will notice if i fuck it up...) add some new fields - old mask and new mask for 1 date 2 phone 3 number 4 plaintext
[more later ]

other thing to consider is -

hmm i forgot that too but also rub some Percy.io tests on it 