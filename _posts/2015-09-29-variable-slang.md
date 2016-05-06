---
layout: post
title: "Variable Slang, or Why Names are Important"
tags:
 -
---

Any software developer can tell you why names are important. A lot of us have not internalized this sufficiently to have it inform our actions as frequently as I would like.

A variable name is important because it tells you what that variable holds. If the variable name is "orange_cats" and the variable holds calico cats, then is the bug that the variable should be holding orange cats, or that the variable should be named "calico_cats"? Such are the existential questions of software development, and the answer is that it depends on what the program "should" be doing. And then you have go go figure out what the program should be doing- probably by reading other parts of the code, which may or may not also be lying. If this does not give you a clear answer, ask your product team, teammates, or API docs, as appropriate.

When your source of truth is self-contradictory (as in the case of the orange and calico cats), the basic assumption that "the code doesn't lie" is broken, and developers begin to use more caution, which takes more time. If you have a codebase that is clear and does not lie about what it contains, then less caution is warranted and development can proceed faster.

Using cultural references or linguistic slang in a codebase is, while maybe fun, not in the best interests of the maintainability of the project, since future developers might spend some time trying to figure out what on earth the thing is supposed to mean.

Arguments for keeping variable names like "FittyCent" and "someDamnThingWat"

"Don't you want to have FUN?"

1. No, not really
2. That is not my idea of fun
3. Quit putting your fun in my way


